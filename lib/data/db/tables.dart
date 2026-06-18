import 'package:drift/drift.dart';

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
