import 'package:drift/drift.dart';

/// 手机号码主表
class PhoneNumbers extends Table {
  TextColumn get id => text()();
  TextColumn get number => text()();
  TextColumn get carrier => text()();
  TextColumn get mvnoId => text().nullable()();
  TextColumn get purpose => text().withDefault(const Constant('primary'))();
  TextColumn get iccid => text().nullable()();
  TextColumn get status => text().withDefault(const Constant('active'))();
  TextColumn get note => text().nullable()();
  DateTimeColumn get joinedAt => dateTime().nullable()();
  DateTimeColumn get createdAt =>
      dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt =>
      dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

/// 套餐记录表，关联 [PhoneNumbers]，号码删除时级联删除
class Plans extends Table {
  TextColumn get id => text()();
  TextColumn get phoneId =>
      text().references(PhoneNumbers, #id, onDelete: KeyAction.cascade)();
  TextColumn get name => text()();
  RealColumn get monthlyFee => real().withDefault(const Constant(0))();
  RealColumn get dataGb => real().withDefault(const Constant(0))();
  IntColumn get voiceMin => integer().withDefault(const Constant(0))();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime().nullable()();
  TextColumn get note => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

/// 保号规则表，存储每张号码的保号周期和提醒时间
class KeepAliveRules extends Table {
  TextColumn get id => text()();
  TextColumn get phoneId =>
      text().references(PhoneNumbers, #id, onDelete: KeyAction.cascade)();
  TextColumn get ruleType => text()(); // recharge / call / sms / data
  IntColumn get periodDays => integer()();
  DateTimeColumn get lastActiveAt => dateTime().nullable()();
  DateTimeColumn get nextRemindAt => dateTime().nullable()();
  BoolColumn get enabled => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}

/// 操作记录表，记录充值、通话、短信、流量等活动
class Activities extends Table {
  TextColumn get id => text()();
  TextColumn get phoneId =>
      text().references(PhoneNumbers, #id, onDelete: KeyAction.cascade)();
  TextColumn get type => text()(); // call / sms / recharge / data
  DateTimeColumn get occurredAt => dateTime()();
  RealColumn get amount => real().withDefault(const Constant(0))();
  TextColumn get note => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

/// 资产估值表，记录号码的市场价值和年成本
class Assets extends Table {
  TextColumn get id => text()();
  TextColumn get phoneId =>
      text().references(PhoneNumbers, #id, onDelete: KeyAction.cascade)();
  RealColumn get valuation => real().withDefault(const Constant(0))();
  TextColumn get premiumLevel =>
      text().withDefault(const Constant('normal'))(); // normal / good / premium
  RealColumn get annualCost => real().withDefault(const Constant(0))();
  TextColumn get note => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

/// 虚拟运营商（MVNO）信息表
class Mvnos extends Table {
  TextColumn get id => text()();
  TextColumn get brand => text()();
  TextColumn get hostNetwork => text()(); // 移动 / 联通 / 电信
  TextColumn get serviceUrl => text().nullable()();
  TextColumn get apn => text().nullable()();
  BoolColumn get builtIn => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}
