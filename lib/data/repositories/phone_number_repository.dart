import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

import '../db/app_database.dart';

/// 号码数据仓库，封装对 [PhoneNumbers] 和 [KeepAliveRules] 表的增删改查
class PhoneNumberRepository {
  PhoneNumberRepository(this._db);

  final AppDatabase _db;
  static const _uuid = Uuid();

  /// 实时监听所有号码，按创建时间倒序排列
  Stream<List<PhoneNumber>> watchAll() {
    return (_db.select(_db.phoneNumbers)
          ..orderBy([
            (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)
          ]))
        .watch();
  }

  /// 按 id 查询单条号码，不存在则返回 null
  Future<PhoneNumber?> findById(String id) {
    return (_db.select(_db.phoneNumbers)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  /// 新增号码，同时创建对应的保号规则，返回新号码的 id
  Future<String> insert({
    required String number,
    required String carrier,
    String? mvnoId,
    String purpose = 'primary',
    String? iccid,
    String? note,
    DateTime? joinedAt,
    // keep-alive fields
    DateTime? lastActiveAt,
    int keepAlivePeriodDays = 180,
    DateTime? nextRemindAt,
    String? keepAliveMethod, // ruleType: sms / recharge / balance / data / other
  }) async {
    final id = _uuid.v4();
    final now = DateTime.now();
    await _db.into(_db.phoneNumbers).insert(
          PhoneNumbersCompanion.insert(
            id: id,
            number: number,
            carrier: carrier,
            mvnoId: Value(mvnoId),
            purpose: Value(purpose),
            iccid: Value(iccid),
            note: Value(note),
            joinedAt: Value(joinedAt),
            createdAt: Value(now),
            updatedAt: Value(now),
          ),
        );
    // Insert keep-alive rule if provided
    final effectiveLastActive = lastActiveAt ?? now;
    final effectiveNext = nextRemindAt ??
        effectiveLastActive.add(Duration(days: keepAlivePeriodDays));
    await _db.into(_db.keepAliveRules).insert(
          KeepAliveRulesCompanion.insert(
            id: _uuid.v4(),
            phoneId: id,
            ruleType: keepAliveMethod ?? 'other',
            periodDays: keepAlivePeriodDays,
            lastActiveAt: Value(effectiveLastActive),
            nextRemindAt: Value(effectiveNext),
          ),
        );
    return id;
  }

  /// 更新号码信息，自动刷新 updatedAt 时间戳
  Future<void> update(PhoneNumber phone) async {
    await _db.update(_db.phoneNumbers).replace(
          phone.copyWith(updatedAt: DateTime.now()),
        );
  }

  /// 删除号码及其级联关联数据（套餐、保号规则、活动记录等）
  Future<void> delete(String id) async {
    await (_db.delete(_db.phoneNumbers)..where((t) => t.id.equals(id))).go();
  }
}
