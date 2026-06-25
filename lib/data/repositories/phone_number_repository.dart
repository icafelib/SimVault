import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

import '../db/app_database.dart';

class PhoneNumberRepository {
  PhoneNumberRepository(this._db);

  final AppDatabase _db;
  static const _uuid = Uuid();

  Stream<List<PhoneNumber>> watchAll() {
    return (_db.select(_db.phoneNumbers)
          ..orderBy([
            (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)
          ]))
        .watch();
  }

  Future<PhoneNumber?> findById(String id) {
    return (_db.select(_db.phoneNumbers)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

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

  Future<void> update(PhoneNumber phone) async {
    await _db.update(_db.phoneNumbers).replace(
          phone.copyWith(updatedAt: DateTime.now()),
        );
  }

  Future<void> delete(String id) async {
    await (_db.delete(_db.phoneNumbers)..where((t) => t.id.equals(id))).go();
  }
}
