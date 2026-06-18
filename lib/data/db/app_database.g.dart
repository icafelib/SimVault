// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $PhoneNumbersTable extends PhoneNumbers
    with TableInfo<$PhoneNumbersTable, PhoneNumber> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PhoneNumbersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
    'number',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _carrierMeta = const VerificationMeta(
    'carrier',
  );
  @override
  late final GeneratedColumn<String> carrier = GeneratedColumn<String>(
    'carrier',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mvnoIdMeta = const VerificationMeta('mvnoId');
  @override
  late final GeneratedColumn<String> mvnoId = GeneratedColumn<String>(
    'mvno_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _purposeMeta = const VerificationMeta(
    'purpose',
  );
  @override
  late final GeneratedColumn<String> purpose = GeneratedColumn<String>(
    'purpose',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('primary'),
  );
  static const VerificationMeta _iccidMeta = const VerificationMeta('iccid');
  @override
  late final GeneratedColumn<String> iccid = GeneratedColumn<String>(
    'iccid',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('active'),
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _joinedAtMeta = const VerificationMeta(
    'joinedAt',
  );
  @override
  late final GeneratedColumn<DateTime> joinedAt = GeneratedColumn<DateTime>(
    'joined_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    number,
    carrier,
    mvnoId,
    purpose,
    iccid,
    status,
    note,
    joinedAt,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'phone_numbers';
  @override
  VerificationContext validateIntegrity(
    Insertable<PhoneNumber> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('number')) {
      context.handle(
        _numberMeta,
        number.isAcceptableOrUnknown(data['number']!, _numberMeta),
      );
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('carrier')) {
      context.handle(
        _carrierMeta,
        carrier.isAcceptableOrUnknown(data['carrier']!, _carrierMeta),
      );
    } else if (isInserting) {
      context.missing(_carrierMeta);
    }
    if (data.containsKey('mvno_id')) {
      context.handle(
        _mvnoIdMeta,
        mvnoId.isAcceptableOrUnknown(data['mvno_id']!, _mvnoIdMeta),
      );
    }
    if (data.containsKey('purpose')) {
      context.handle(
        _purposeMeta,
        purpose.isAcceptableOrUnknown(data['purpose']!, _purposeMeta),
      );
    }
    if (data.containsKey('iccid')) {
      context.handle(
        _iccidMeta,
        iccid.isAcceptableOrUnknown(data['iccid']!, _iccidMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('joined_at')) {
      context.handle(
        _joinedAtMeta,
        joinedAt.isAcceptableOrUnknown(data['joined_at']!, _joinedAtMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PhoneNumber map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PhoneNumber(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      number: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}number'],
      )!,
      carrier: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}carrier'],
      )!,
      mvnoId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mvno_id'],
      ),
      purpose: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}purpose'],
      )!,
      iccid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}iccid'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      joinedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}joined_at'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $PhoneNumbersTable createAlias(String alias) {
    return $PhoneNumbersTable(attachedDatabase, alias);
  }
}

class PhoneNumber extends DataClass implements Insertable<PhoneNumber> {
  final String id;
  final String number;
  final String carrier;
  final String? mvnoId;
  final String purpose;
  final String? iccid;
  final String status;
  final String? note;
  final DateTime? joinedAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  const PhoneNumber({
    required this.id,
    required this.number,
    required this.carrier,
    this.mvnoId,
    required this.purpose,
    this.iccid,
    required this.status,
    this.note,
    this.joinedAt,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['number'] = Variable<String>(number);
    map['carrier'] = Variable<String>(carrier);
    if (!nullToAbsent || mvnoId != null) {
      map['mvno_id'] = Variable<String>(mvnoId);
    }
    map['purpose'] = Variable<String>(purpose);
    if (!nullToAbsent || iccid != null) {
      map['iccid'] = Variable<String>(iccid);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    if (!nullToAbsent || joinedAt != null) {
      map['joined_at'] = Variable<DateTime>(joinedAt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  PhoneNumbersCompanion toCompanion(bool nullToAbsent) {
    return PhoneNumbersCompanion(
      id: Value(id),
      number: Value(number),
      carrier: Value(carrier),
      mvnoId: mvnoId == null && nullToAbsent
          ? const Value.absent()
          : Value(mvnoId),
      purpose: Value(purpose),
      iccid: iccid == null && nullToAbsent
          ? const Value.absent()
          : Value(iccid),
      status: Value(status),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      joinedAt: joinedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(joinedAt),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory PhoneNumber.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PhoneNumber(
      id: serializer.fromJson<String>(json['id']),
      number: serializer.fromJson<String>(json['number']),
      carrier: serializer.fromJson<String>(json['carrier']),
      mvnoId: serializer.fromJson<String?>(json['mvnoId']),
      purpose: serializer.fromJson<String>(json['purpose']),
      iccid: serializer.fromJson<String?>(json['iccid']),
      status: serializer.fromJson<String>(json['status']),
      note: serializer.fromJson<String?>(json['note']),
      joinedAt: serializer.fromJson<DateTime?>(json['joinedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'number': serializer.toJson<String>(number),
      'carrier': serializer.toJson<String>(carrier),
      'mvnoId': serializer.toJson<String?>(mvnoId),
      'purpose': serializer.toJson<String>(purpose),
      'iccid': serializer.toJson<String?>(iccid),
      'status': serializer.toJson<String>(status),
      'note': serializer.toJson<String?>(note),
      'joinedAt': serializer.toJson<DateTime?>(joinedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  PhoneNumber copyWith({
    String? id,
    String? number,
    String? carrier,
    Value<String?> mvnoId = const Value.absent(),
    String? purpose,
    Value<String?> iccid = const Value.absent(),
    String? status,
    Value<String?> note = const Value.absent(),
    Value<DateTime?> joinedAt = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => PhoneNumber(
    id: id ?? this.id,
    number: number ?? this.number,
    carrier: carrier ?? this.carrier,
    mvnoId: mvnoId.present ? mvnoId.value : this.mvnoId,
    purpose: purpose ?? this.purpose,
    iccid: iccid.present ? iccid.value : this.iccid,
    status: status ?? this.status,
    note: note.present ? note.value : this.note,
    joinedAt: joinedAt.present ? joinedAt.value : this.joinedAt,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  PhoneNumber copyWithCompanion(PhoneNumbersCompanion data) {
    return PhoneNumber(
      id: data.id.present ? data.id.value : this.id,
      number: data.number.present ? data.number.value : this.number,
      carrier: data.carrier.present ? data.carrier.value : this.carrier,
      mvnoId: data.mvnoId.present ? data.mvnoId.value : this.mvnoId,
      purpose: data.purpose.present ? data.purpose.value : this.purpose,
      iccid: data.iccid.present ? data.iccid.value : this.iccid,
      status: data.status.present ? data.status.value : this.status,
      note: data.note.present ? data.note.value : this.note,
      joinedAt: data.joinedAt.present ? data.joinedAt.value : this.joinedAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PhoneNumber(')
          ..write('id: $id, ')
          ..write('number: $number, ')
          ..write('carrier: $carrier, ')
          ..write('mvnoId: $mvnoId, ')
          ..write('purpose: $purpose, ')
          ..write('iccid: $iccid, ')
          ..write('status: $status, ')
          ..write('note: $note, ')
          ..write('joinedAt: $joinedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    number,
    carrier,
    mvnoId,
    purpose,
    iccid,
    status,
    note,
    joinedAt,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PhoneNumber &&
          other.id == this.id &&
          other.number == this.number &&
          other.carrier == this.carrier &&
          other.mvnoId == this.mvnoId &&
          other.purpose == this.purpose &&
          other.iccid == this.iccid &&
          other.status == this.status &&
          other.note == this.note &&
          other.joinedAt == this.joinedAt &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PhoneNumbersCompanion extends UpdateCompanion<PhoneNumber> {
  final Value<String> id;
  final Value<String> number;
  final Value<String> carrier;
  final Value<String?> mvnoId;
  final Value<String> purpose;
  final Value<String?> iccid;
  final Value<String> status;
  final Value<String?> note;
  final Value<DateTime?> joinedAt;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const PhoneNumbersCompanion({
    this.id = const Value.absent(),
    this.number = const Value.absent(),
    this.carrier = const Value.absent(),
    this.mvnoId = const Value.absent(),
    this.purpose = const Value.absent(),
    this.iccid = const Value.absent(),
    this.status = const Value.absent(),
    this.note = const Value.absent(),
    this.joinedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PhoneNumbersCompanion.insert({
    required String id,
    required String number,
    required String carrier,
    this.mvnoId = const Value.absent(),
    this.purpose = const Value.absent(),
    this.iccid = const Value.absent(),
    this.status = const Value.absent(),
    this.note = const Value.absent(),
    this.joinedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       number = Value(number),
       carrier = Value(carrier);
  static Insertable<PhoneNumber> custom({
    Expression<String>? id,
    Expression<String>? number,
    Expression<String>? carrier,
    Expression<String>? mvnoId,
    Expression<String>? purpose,
    Expression<String>? iccid,
    Expression<String>? status,
    Expression<String>? note,
    Expression<DateTime>? joinedAt,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (number != null) 'number': number,
      if (carrier != null) 'carrier': carrier,
      if (mvnoId != null) 'mvno_id': mvnoId,
      if (purpose != null) 'purpose': purpose,
      if (iccid != null) 'iccid': iccid,
      if (status != null) 'status': status,
      if (note != null) 'note': note,
      if (joinedAt != null) 'joined_at': joinedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PhoneNumbersCompanion copyWith({
    Value<String>? id,
    Value<String>? number,
    Value<String>? carrier,
    Value<String?>? mvnoId,
    Value<String>? purpose,
    Value<String?>? iccid,
    Value<String>? status,
    Value<String?>? note,
    Value<DateTime?>? joinedAt,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return PhoneNumbersCompanion(
      id: id ?? this.id,
      number: number ?? this.number,
      carrier: carrier ?? this.carrier,
      mvnoId: mvnoId ?? this.mvnoId,
      purpose: purpose ?? this.purpose,
      iccid: iccid ?? this.iccid,
      status: status ?? this.status,
      note: note ?? this.note,
      joinedAt: joinedAt ?? this.joinedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (carrier.present) {
      map['carrier'] = Variable<String>(carrier.value);
    }
    if (mvnoId.present) {
      map['mvno_id'] = Variable<String>(mvnoId.value);
    }
    if (purpose.present) {
      map['purpose'] = Variable<String>(purpose.value);
    }
    if (iccid.present) {
      map['iccid'] = Variable<String>(iccid.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (joinedAt.present) {
      map['joined_at'] = Variable<DateTime>(joinedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PhoneNumbersCompanion(')
          ..write('id: $id, ')
          ..write('number: $number, ')
          ..write('carrier: $carrier, ')
          ..write('mvnoId: $mvnoId, ')
          ..write('purpose: $purpose, ')
          ..write('iccid: $iccid, ')
          ..write('status: $status, ')
          ..write('note: $note, ')
          ..write('joinedAt: $joinedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PlansTable extends Plans with TableInfo<$PlansTable, Plan> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlansTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneIdMeta = const VerificationMeta(
    'phoneId',
  );
  @override
  late final GeneratedColumn<String> phoneId = GeneratedColumn<String>(
    'phone_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES phone_numbers (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _monthlyFeeMeta = const VerificationMeta(
    'monthlyFee',
  );
  @override
  late final GeneratedColumn<double> monthlyFee = GeneratedColumn<double>(
    'monthly_fee',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _dataGbMeta = const VerificationMeta('dataGb');
  @override
  late final GeneratedColumn<double> dataGb = GeneratedColumn<double>(
    'data_gb',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _voiceMinMeta = const VerificationMeta(
    'voiceMin',
  );
  @override
  late final GeneratedColumn<int> voiceMin = GeneratedColumn<int>(
    'voice_min',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _startDateMeta = const VerificationMeta(
    'startDate',
  );
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
    'start_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endDateMeta = const VerificationMeta(
    'endDate',
  );
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
    'end_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    phoneId,
    name,
    monthlyFee,
    dataGb,
    voiceMin,
    startDate,
    endDate,
    note,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'plans';
  @override
  VerificationContext validateIntegrity(
    Insertable<Plan> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('phone_id')) {
      context.handle(
        _phoneIdMeta,
        phoneId.isAcceptableOrUnknown(data['phone_id']!, _phoneIdMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('monthly_fee')) {
      context.handle(
        _monthlyFeeMeta,
        monthlyFee.isAcceptableOrUnknown(data['monthly_fee']!, _monthlyFeeMeta),
      );
    }
    if (data.containsKey('data_gb')) {
      context.handle(
        _dataGbMeta,
        dataGb.isAcceptableOrUnknown(data['data_gb']!, _dataGbMeta),
      );
    }
    if (data.containsKey('voice_min')) {
      context.handle(
        _voiceMinMeta,
        voiceMin.isAcceptableOrUnknown(data['voice_min']!, _voiceMinMeta),
      );
    }
    if (data.containsKey('start_date')) {
      context.handle(
        _startDateMeta,
        startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta),
      );
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('end_date')) {
      context.handle(
        _endDateMeta,
        endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Plan map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Plan(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      phoneId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      monthlyFee: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}monthly_fee'],
      )!,
      dataGb: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}data_gb'],
      )!,
      voiceMin: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}voice_min'],
      )!,
      startDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}start_date'],
      )!,
      endDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}end_date'],
      ),
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
    );
  }

  @override
  $PlansTable createAlias(String alias) {
    return $PlansTable(attachedDatabase, alias);
  }
}

class Plan extends DataClass implements Insertable<Plan> {
  final String id;
  final String phoneId;
  final String name;
  final double monthlyFee;
  final double dataGb;
  final int voiceMin;
  final DateTime startDate;
  final DateTime? endDate;
  final String? note;
  const Plan({
    required this.id,
    required this.phoneId,
    required this.name,
    required this.monthlyFee,
    required this.dataGb,
    required this.voiceMin,
    required this.startDate,
    this.endDate,
    this.note,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['phone_id'] = Variable<String>(phoneId);
    map['name'] = Variable<String>(name);
    map['monthly_fee'] = Variable<double>(monthlyFee);
    map['data_gb'] = Variable<double>(dataGb);
    map['voice_min'] = Variable<int>(voiceMin);
    map['start_date'] = Variable<DateTime>(startDate);
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<DateTime>(endDate);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    return map;
  }

  PlansCompanion toCompanion(bool nullToAbsent) {
    return PlansCompanion(
      id: Value(id),
      phoneId: Value(phoneId),
      name: Value(name),
      monthlyFee: Value(monthlyFee),
      dataGb: Value(dataGb),
      voiceMin: Value(voiceMin),
      startDate: Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
    );
  }

  factory Plan.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Plan(
      id: serializer.fromJson<String>(json['id']),
      phoneId: serializer.fromJson<String>(json['phoneId']),
      name: serializer.fromJson<String>(json['name']),
      monthlyFee: serializer.fromJson<double>(json['monthlyFee']),
      dataGb: serializer.fromJson<double>(json['dataGb']),
      voiceMin: serializer.fromJson<int>(json['voiceMin']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      note: serializer.fromJson<String?>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'phoneId': serializer.toJson<String>(phoneId),
      'name': serializer.toJson<String>(name),
      'monthlyFee': serializer.toJson<double>(monthlyFee),
      'dataGb': serializer.toJson<double>(dataGb),
      'voiceMin': serializer.toJson<int>(voiceMin),
      'startDate': serializer.toJson<DateTime>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'note': serializer.toJson<String?>(note),
    };
  }

  Plan copyWith({
    String? id,
    String? phoneId,
    String? name,
    double? monthlyFee,
    double? dataGb,
    int? voiceMin,
    DateTime? startDate,
    Value<DateTime?> endDate = const Value.absent(),
    Value<String?> note = const Value.absent(),
  }) => Plan(
    id: id ?? this.id,
    phoneId: phoneId ?? this.phoneId,
    name: name ?? this.name,
    monthlyFee: monthlyFee ?? this.monthlyFee,
    dataGb: dataGb ?? this.dataGb,
    voiceMin: voiceMin ?? this.voiceMin,
    startDate: startDate ?? this.startDate,
    endDate: endDate.present ? endDate.value : this.endDate,
    note: note.present ? note.value : this.note,
  );
  Plan copyWithCompanion(PlansCompanion data) {
    return Plan(
      id: data.id.present ? data.id.value : this.id,
      phoneId: data.phoneId.present ? data.phoneId.value : this.phoneId,
      name: data.name.present ? data.name.value : this.name,
      monthlyFee: data.monthlyFee.present
          ? data.monthlyFee.value
          : this.monthlyFee,
      dataGb: data.dataGb.present ? data.dataGb.value : this.dataGb,
      voiceMin: data.voiceMin.present ? data.voiceMin.value : this.voiceMin,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      endDate: data.endDate.present ? data.endDate.value : this.endDate,
      note: data.note.present ? data.note.value : this.note,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Plan(')
          ..write('id: $id, ')
          ..write('phoneId: $phoneId, ')
          ..write('name: $name, ')
          ..write('monthlyFee: $monthlyFee, ')
          ..write('dataGb: $dataGb, ')
          ..write('voiceMin: $voiceMin, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    phoneId,
    name,
    monthlyFee,
    dataGb,
    voiceMin,
    startDate,
    endDate,
    note,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Plan &&
          other.id == this.id &&
          other.phoneId == this.phoneId &&
          other.name == this.name &&
          other.monthlyFee == this.monthlyFee &&
          other.dataGb == this.dataGb &&
          other.voiceMin == this.voiceMin &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.note == this.note);
}

class PlansCompanion extends UpdateCompanion<Plan> {
  final Value<String> id;
  final Value<String> phoneId;
  final Value<String> name;
  final Value<double> monthlyFee;
  final Value<double> dataGb;
  final Value<int> voiceMin;
  final Value<DateTime> startDate;
  final Value<DateTime?> endDate;
  final Value<String?> note;
  final Value<int> rowid;
  const PlansCompanion({
    this.id = const Value.absent(),
    this.phoneId = const Value.absent(),
    this.name = const Value.absent(),
    this.monthlyFee = const Value.absent(),
    this.dataGb = const Value.absent(),
    this.voiceMin = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PlansCompanion.insert({
    required String id,
    required String phoneId,
    required String name,
    this.monthlyFee = const Value.absent(),
    this.dataGb = const Value.absent(),
    this.voiceMin = const Value.absent(),
    required DateTime startDate,
    this.endDate = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       phoneId = Value(phoneId),
       name = Value(name),
       startDate = Value(startDate);
  static Insertable<Plan> custom({
    Expression<String>? id,
    Expression<String>? phoneId,
    Expression<String>? name,
    Expression<double>? monthlyFee,
    Expression<double>? dataGb,
    Expression<int>? voiceMin,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<String>? note,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (phoneId != null) 'phone_id': phoneId,
      if (name != null) 'name': name,
      if (monthlyFee != null) 'monthly_fee': monthlyFee,
      if (dataGb != null) 'data_gb': dataGb,
      if (voiceMin != null) 'voice_min': voiceMin,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (note != null) 'note': note,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PlansCompanion copyWith({
    Value<String>? id,
    Value<String>? phoneId,
    Value<String>? name,
    Value<double>? monthlyFee,
    Value<double>? dataGb,
    Value<int>? voiceMin,
    Value<DateTime>? startDate,
    Value<DateTime?>? endDate,
    Value<String?>? note,
    Value<int>? rowid,
  }) {
    return PlansCompanion(
      id: id ?? this.id,
      phoneId: phoneId ?? this.phoneId,
      name: name ?? this.name,
      monthlyFee: monthlyFee ?? this.monthlyFee,
      dataGb: dataGb ?? this.dataGb,
      voiceMin: voiceMin ?? this.voiceMin,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      note: note ?? this.note,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (phoneId.present) {
      map['phone_id'] = Variable<String>(phoneId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (monthlyFee.present) {
      map['monthly_fee'] = Variable<double>(monthlyFee.value);
    }
    if (dataGb.present) {
      map['data_gb'] = Variable<double>(dataGb.value);
    }
    if (voiceMin.present) {
      map['voice_min'] = Variable<int>(voiceMin.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlansCompanion(')
          ..write('id: $id, ')
          ..write('phoneId: $phoneId, ')
          ..write('name: $name, ')
          ..write('monthlyFee: $monthlyFee, ')
          ..write('dataGb: $dataGb, ')
          ..write('voiceMin: $voiceMin, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('note: $note, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $KeepAliveRulesTable extends KeepAliveRules
    with TableInfo<$KeepAliveRulesTable, KeepAliveRule> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KeepAliveRulesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneIdMeta = const VerificationMeta(
    'phoneId',
  );
  @override
  late final GeneratedColumn<String> phoneId = GeneratedColumn<String>(
    'phone_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES phone_numbers (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _ruleTypeMeta = const VerificationMeta(
    'ruleType',
  );
  @override
  late final GeneratedColumn<String> ruleType = GeneratedColumn<String>(
    'rule_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _periodDaysMeta = const VerificationMeta(
    'periodDays',
  );
  @override
  late final GeneratedColumn<int> periodDays = GeneratedColumn<int>(
    'period_days',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastActiveAtMeta = const VerificationMeta(
    'lastActiveAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastActiveAt = GeneratedColumn<DateTime>(
    'last_active_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nextRemindAtMeta = const VerificationMeta(
    'nextRemindAt',
  );
  @override
  late final GeneratedColumn<DateTime> nextRemindAt = GeneratedColumn<DateTime>(
    'next_remind_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _enabledMeta = const VerificationMeta(
    'enabled',
  );
  @override
  late final GeneratedColumn<bool> enabled = GeneratedColumn<bool>(
    'enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enabled" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    phoneId,
    ruleType,
    periodDays,
    lastActiveAt,
    nextRemindAt,
    enabled,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'keep_alive_rules';
  @override
  VerificationContext validateIntegrity(
    Insertable<KeepAliveRule> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('phone_id')) {
      context.handle(
        _phoneIdMeta,
        phoneId.isAcceptableOrUnknown(data['phone_id']!, _phoneIdMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneIdMeta);
    }
    if (data.containsKey('rule_type')) {
      context.handle(
        _ruleTypeMeta,
        ruleType.isAcceptableOrUnknown(data['rule_type']!, _ruleTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_ruleTypeMeta);
    }
    if (data.containsKey('period_days')) {
      context.handle(
        _periodDaysMeta,
        periodDays.isAcceptableOrUnknown(data['period_days']!, _periodDaysMeta),
      );
    } else if (isInserting) {
      context.missing(_periodDaysMeta);
    }
    if (data.containsKey('last_active_at')) {
      context.handle(
        _lastActiveAtMeta,
        lastActiveAt.isAcceptableOrUnknown(
          data['last_active_at']!,
          _lastActiveAtMeta,
        ),
      );
    }
    if (data.containsKey('next_remind_at')) {
      context.handle(
        _nextRemindAtMeta,
        nextRemindAt.isAcceptableOrUnknown(
          data['next_remind_at']!,
          _nextRemindAtMeta,
        ),
      );
    }
    if (data.containsKey('enabled')) {
      context.handle(
        _enabledMeta,
        enabled.isAcceptableOrUnknown(data['enabled']!, _enabledMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  KeepAliveRule map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KeepAliveRule(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      phoneId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_id'],
      )!,
      ruleType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}rule_type'],
      )!,
      periodDays: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}period_days'],
      )!,
      lastActiveAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_active_at'],
      ),
      nextRemindAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}next_remind_at'],
      ),
      enabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enabled'],
      )!,
    );
  }

  @override
  $KeepAliveRulesTable createAlias(String alias) {
    return $KeepAliveRulesTable(attachedDatabase, alias);
  }
}

class KeepAliveRule extends DataClass implements Insertable<KeepAliveRule> {
  final String id;
  final String phoneId;
  final String ruleType;
  final int periodDays;
  final DateTime? lastActiveAt;
  final DateTime? nextRemindAt;
  final bool enabled;
  const KeepAliveRule({
    required this.id,
    required this.phoneId,
    required this.ruleType,
    required this.periodDays,
    this.lastActiveAt,
    this.nextRemindAt,
    required this.enabled,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['phone_id'] = Variable<String>(phoneId);
    map['rule_type'] = Variable<String>(ruleType);
    map['period_days'] = Variable<int>(periodDays);
    if (!nullToAbsent || lastActiveAt != null) {
      map['last_active_at'] = Variable<DateTime>(lastActiveAt);
    }
    if (!nullToAbsent || nextRemindAt != null) {
      map['next_remind_at'] = Variable<DateTime>(nextRemindAt);
    }
    map['enabled'] = Variable<bool>(enabled);
    return map;
  }

  KeepAliveRulesCompanion toCompanion(bool nullToAbsent) {
    return KeepAliveRulesCompanion(
      id: Value(id),
      phoneId: Value(phoneId),
      ruleType: Value(ruleType),
      periodDays: Value(periodDays),
      lastActiveAt: lastActiveAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastActiveAt),
      nextRemindAt: nextRemindAt == null && nullToAbsent
          ? const Value.absent()
          : Value(nextRemindAt),
      enabled: Value(enabled),
    );
  }

  factory KeepAliveRule.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KeepAliveRule(
      id: serializer.fromJson<String>(json['id']),
      phoneId: serializer.fromJson<String>(json['phoneId']),
      ruleType: serializer.fromJson<String>(json['ruleType']),
      periodDays: serializer.fromJson<int>(json['periodDays']),
      lastActiveAt: serializer.fromJson<DateTime?>(json['lastActiveAt']),
      nextRemindAt: serializer.fromJson<DateTime?>(json['nextRemindAt']),
      enabled: serializer.fromJson<bool>(json['enabled']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'phoneId': serializer.toJson<String>(phoneId),
      'ruleType': serializer.toJson<String>(ruleType),
      'periodDays': serializer.toJson<int>(periodDays),
      'lastActiveAt': serializer.toJson<DateTime?>(lastActiveAt),
      'nextRemindAt': serializer.toJson<DateTime?>(nextRemindAt),
      'enabled': serializer.toJson<bool>(enabled),
    };
  }

  KeepAliveRule copyWith({
    String? id,
    String? phoneId,
    String? ruleType,
    int? periodDays,
    Value<DateTime?> lastActiveAt = const Value.absent(),
    Value<DateTime?> nextRemindAt = const Value.absent(),
    bool? enabled,
  }) => KeepAliveRule(
    id: id ?? this.id,
    phoneId: phoneId ?? this.phoneId,
    ruleType: ruleType ?? this.ruleType,
    periodDays: periodDays ?? this.periodDays,
    lastActiveAt: lastActiveAt.present ? lastActiveAt.value : this.lastActiveAt,
    nextRemindAt: nextRemindAt.present ? nextRemindAt.value : this.nextRemindAt,
    enabled: enabled ?? this.enabled,
  );
  KeepAliveRule copyWithCompanion(KeepAliveRulesCompanion data) {
    return KeepAliveRule(
      id: data.id.present ? data.id.value : this.id,
      phoneId: data.phoneId.present ? data.phoneId.value : this.phoneId,
      ruleType: data.ruleType.present ? data.ruleType.value : this.ruleType,
      periodDays: data.periodDays.present
          ? data.periodDays.value
          : this.periodDays,
      lastActiveAt: data.lastActiveAt.present
          ? data.lastActiveAt.value
          : this.lastActiveAt,
      nextRemindAt: data.nextRemindAt.present
          ? data.nextRemindAt.value
          : this.nextRemindAt,
      enabled: data.enabled.present ? data.enabled.value : this.enabled,
    );
  }

  @override
  String toString() {
    return (StringBuffer('KeepAliveRule(')
          ..write('id: $id, ')
          ..write('phoneId: $phoneId, ')
          ..write('ruleType: $ruleType, ')
          ..write('periodDays: $periodDays, ')
          ..write('lastActiveAt: $lastActiveAt, ')
          ..write('nextRemindAt: $nextRemindAt, ')
          ..write('enabled: $enabled')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    phoneId,
    ruleType,
    periodDays,
    lastActiveAt,
    nextRemindAt,
    enabled,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KeepAliveRule &&
          other.id == this.id &&
          other.phoneId == this.phoneId &&
          other.ruleType == this.ruleType &&
          other.periodDays == this.periodDays &&
          other.lastActiveAt == this.lastActiveAt &&
          other.nextRemindAt == this.nextRemindAt &&
          other.enabled == this.enabled);
}

class KeepAliveRulesCompanion extends UpdateCompanion<KeepAliveRule> {
  final Value<String> id;
  final Value<String> phoneId;
  final Value<String> ruleType;
  final Value<int> periodDays;
  final Value<DateTime?> lastActiveAt;
  final Value<DateTime?> nextRemindAt;
  final Value<bool> enabled;
  final Value<int> rowid;
  const KeepAliveRulesCompanion({
    this.id = const Value.absent(),
    this.phoneId = const Value.absent(),
    this.ruleType = const Value.absent(),
    this.periodDays = const Value.absent(),
    this.lastActiveAt = const Value.absent(),
    this.nextRemindAt = const Value.absent(),
    this.enabled = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  KeepAliveRulesCompanion.insert({
    required String id,
    required String phoneId,
    required String ruleType,
    required int periodDays,
    this.lastActiveAt = const Value.absent(),
    this.nextRemindAt = const Value.absent(),
    this.enabled = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       phoneId = Value(phoneId),
       ruleType = Value(ruleType),
       periodDays = Value(periodDays);
  static Insertable<KeepAliveRule> custom({
    Expression<String>? id,
    Expression<String>? phoneId,
    Expression<String>? ruleType,
    Expression<int>? periodDays,
    Expression<DateTime>? lastActiveAt,
    Expression<DateTime>? nextRemindAt,
    Expression<bool>? enabled,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (phoneId != null) 'phone_id': phoneId,
      if (ruleType != null) 'rule_type': ruleType,
      if (periodDays != null) 'period_days': periodDays,
      if (lastActiveAt != null) 'last_active_at': lastActiveAt,
      if (nextRemindAt != null) 'next_remind_at': nextRemindAt,
      if (enabled != null) 'enabled': enabled,
      if (rowid != null) 'rowid': rowid,
    });
  }

  KeepAliveRulesCompanion copyWith({
    Value<String>? id,
    Value<String>? phoneId,
    Value<String>? ruleType,
    Value<int>? periodDays,
    Value<DateTime?>? lastActiveAt,
    Value<DateTime?>? nextRemindAt,
    Value<bool>? enabled,
    Value<int>? rowid,
  }) {
    return KeepAliveRulesCompanion(
      id: id ?? this.id,
      phoneId: phoneId ?? this.phoneId,
      ruleType: ruleType ?? this.ruleType,
      periodDays: periodDays ?? this.periodDays,
      lastActiveAt: lastActiveAt ?? this.lastActiveAt,
      nextRemindAt: nextRemindAt ?? this.nextRemindAt,
      enabled: enabled ?? this.enabled,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (phoneId.present) {
      map['phone_id'] = Variable<String>(phoneId.value);
    }
    if (ruleType.present) {
      map['rule_type'] = Variable<String>(ruleType.value);
    }
    if (periodDays.present) {
      map['period_days'] = Variable<int>(periodDays.value);
    }
    if (lastActiveAt.present) {
      map['last_active_at'] = Variable<DateTime>(lastActiveAt.value);
    }
    if (nextRemindAt.present) {
      map['next_remind_at'] = Variable<DateTime>(nextRemindAt.value);
    }
    if (enabled.present) {
      map['enabled'] = Variable<bool>(enabled.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KeepAliveRulesCompanion(')
          ..write('id: $id, ')
          ..write('phoneId: $phoneId, ')
          ..write('ruleType: $ruleType, ')
          ..write('periodDays: $periodDays, ')
          ..write('lastActiveAt: $lastActiveAt, ')
          ..write('nextRemindAt: $nextRemindAt, ')
          ..write('enabled: $enabled, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ActivitiesTable extends Activities
    with TableInfo<$ActivitiesTable, Activity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ActivitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneIdMeta = const VerificationMeta(
    'phoneId',
  );
  @override
  late final GeneratedColumn<String> phoneId = GeneratedColumn<String>(
    'phone_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES phone_numbers (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _occurredAtMeta = const VerificationMeta(
    'occurredAt',
  );
  @override
  late final GeneratedColumn<DateTime> occurredAt = GeneratedColumn<DateTime>(
    'occurred_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    phoneId,
    type,
    occurredAt,
    amount,
    note,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'activities';
  @override
  VerificationContext validateIntegrity(
    Insertable<Activity> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('phone_id')) {
      context.handle(
        _phoneIdMeta,
        phoneId.isAcceptableOrUnknown(data['phone_id']!, _phoneIdMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('occurred_at')) {
      context.handle(
        _occurredAtMeta,
        occurredAt.isAcceptableOrUnknown(data['occurred_at']!, _occurredAtMeta),
      );
    } else if (isInserting) {
      context.missing(_occurredAtMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Activity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Activity(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      phoneId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_id'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      occurredAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}occurred_at'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
    );
  }

  @override
  $ActivitiesTable createAlias(String alias) {
    return $ActivitiesTable(attachedDatabase, alias);
  }
}

class Activity extends DataClass implements Insertable<Activity> {
  final String id;
  final String phoneId;
  final String type;
  final DateTime occurredAt;
  final double amount;
  final String? note;
  const Activity({
    required this.id,
    required this.phoneId,
    required this.type,
    required this.occurredAt,
    required this.amount,
    this.note,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['phone_id'] = Variable<String>(phoneId);
    map['type'] = Variable<String>(type);
    map['occurred_at'] = Variable<DateTime>(occurredAt);
    map['amount'] = Variable<double>(amount);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    return map;
  }

  ActivitiesCompanion toCompanion(bool nullToAbsent) {
    return ActivitiesCompanion(
      id: Value(id),
      phoneId: Value(phoneId),
      type: Value(type),
      occurredAt: Value(occurredAt),
      amount: Value(amount),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
    );
  }

  factory Activity.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Activity(
      id: serializer.fromJson<String>(json['id']),
      phoneId: serializer.fromJson<String>(json['phoneId']),
      type: serializer.fromJson<String>(json['type']),
      occurredAt: serializer.fromJson<DateTime>(json['occurredAt']),
      amount: serializer.fromJson<double>(json['amount']),
      note: serializer.fromJson<String?>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'phoneId': serializer.toJson<String>(phoneId),
      'type': serializer.toJson<String>(type),
      'occurredAt': serializer.toJson<DateTime>(occurredAt),
      'amount': serializer.toJson<double>(amount),
      'note': serializer.toJson<String?>(note),
    };
  }

  Activity copyWith({
    String? id,
    String? phoneId,
    String? type,
    DateTime? occurredAt,
    double? amount,
    Value<String?> note = const Value.absent(),
  }) => Activity(
    id: id ?? this.id,
    phoneId: phoneId ?? this.phoneId,
    type: type ?? this.type,
    occurredAt: occurredAt ?? this.occurredAt,
    amount: amount ?? this.amount,
    note: note.present ? note.value : this.note,
  );
  Activity copyWithCompanion(ActivitiesCompanion data) {
    return Activity(
      id: data.id.present ? data.id.value : this.id,
      phoneId: data.phoneId.present ? data.phoneId.value : this.phoneId,
      type: data.type.present ? data.type.value : this.type,
      occurredAt: data.occurredAt.present
          ? data.occurredAt.value
          : this.occurredAt,
      amount: data.amount.present ? data.amount.value : this.amount,
      note: data.note.present ? data.note.value : this.note,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Activity(')
          ..write('id: $id, ')
          ..write('phoneId: $phoneId, ')
          ..write('type: $type, ')
          ..write('occurredAt: $occurredAt, ')
          ..write('amount: $amount, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, phoneId, type, occurredAt, amount, note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Activity &&
          other.id == this.id &&
          other.phoneId == this.phoneId &&
          other.type == this.type &&
          other.occurredAt == this.occurredAt &&
          other.amount == this.amount &&
          other.note == this.note);
}

class ActivitiesCompanion extends UpdateCompanion<Activity> {
  final Value<String> id;
  final Value<String> phoneId;
  final Value<String> type;
  final Value<DateTime> occurredAt;
  final Value<double> amount;
  final Value<String?> note;
  final Value<int> rowid;
  const ActivitiesCompanion({
    this.id = const Value.absent(),
    this.phoneId = const Value.absent(),
    this.type = const Value.absent(),
    this.occurredAt = const Value.absent(),
    this.amount = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ActivitiesCompanion.insert({
    required String id,
    required String phoneId,
    required String type,
    required DateTime occurredAt,
    this.amount = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       phoneId = Value(phoneId),
       type = Value(type),
       occurredAt = Value(occurredAt);
  static Insertable<Activity> custom({
    Expression<String>? id,
    Expression<String>? phoneId,
    Expression<String>? type,
    Expression<DateTime>? occurredAt,
    Expression<double>? amount,
    Expression<String>? note,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (phoneId != null) 'phone_id': phoneId,
      if (type != null) 'type': type,
      if (occurredAt != null) 'occurred_at': occurredAt,
      if (amount != null) 'amount': amount,
      if (note != null) 'note': note,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ActivitiesCompanion copyWith({
    Value<String>? id,
    Value<String>? phoneId,
    Value<String>? type,
    Value<DateTime>? occurredAt,
    Value<double>? amount,
    Value<String?>? note,
    Value<int>? rowid,
  }) {
    return ActivitiesCompanion(
      id: id ?? this.id,
      phoneId: phoneId ?? this.phoneId,
      type: type ?? this.type,
      occurredAt: occurredAt ?? this.occurredAt,
      amount: amount ?? this.amount,
      note: note ?? this.note,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (phoneId.present) {
      map['phone_id'] = Variable<String>(phoneId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (occurredAt.present) {
      map['occurred_at'] = Variable<DateTime>(occurredAt.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ActivitiesCompanion(')
          ..write('id: $id, ')
          ..write('phoneId: $phoneId, ')
          ..write('type: $type, ')
          ..write('occurredAt: $occurredAt, ')
          ..write('amount: $amount, ')
          ..write('note: $note, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AssetsTable extends Assets with TableInfo<$AssetsTable, Asset> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AssetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneIdMeta = const VerificationMeta(
    'phoneId',
  );
  @override
  late final GeneratedColumn<String> phoneId = GeneratedColumn<String>(
    'phone_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES phone_numbers (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _valuationMeta = const VerificationMeta(
    'valuation',
  );
  @override
  late final GeneratedColumn<double> valuation = GeneratedColumn<double>(
    'valuation',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _premiumLevelMeta = const VerificationMeta(
    'premiumLevel',
  );
  @override
  late final GeneratedColumn<String> premiumLevel = GeneratedColumn<String>(
    'premium_level',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('normal'),
  );
  static const VerificationMeta _annualCostMeta = const VerificationMeta(
    'annualCost',
  );
  @override
  late final GeneratedColumn<double> annualCost = GeneratedColumn<double>(
    'annual_cost',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    phoneId,
    valuation,
    premiumLevel,
    annualCost,
    note,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'assets';
  @override
  VerificationContext validateIntegrity(
    Insertable<Asset> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('phone_id')) {
      context.handle(
        _phoneIdMeta,
        phoneId.isAcceptableOrUnknown(data['phone_id']!, _phoneIdMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneIdMeta);
    }
    if (data.containsKey('valuation')) {
      context.handle(
        _valuationMeta,
        valuation.isAcceptableOrUnknown(data['valuation']!, _valuationMeta),
      );
    }
    if (data.containsKey('premium_level')) {
      context.handle(
        _premiumLevelMeta,
        premiumLevel.isAcceptableOrUnknown(
          data['premium_level']!,
          _premiumLevelMeta,
        ),
      );
    }
    if (data.containsKey('annual_cost')) {
      context.handle(
        _annualCostMeta,
        annualCost.isAcceptableOrUnknown(data['annual_cost']!, _annualCostMeta),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Asset map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Asset(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      phoneId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_id'],
      )!,
      valuation: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}valuation'],
      )!,
      premiumLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}premium_level'],
      )!,
      annualCost: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}annual_cost'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
    );
  }

  @override
  $AssetsTable createAlias(String alias) {
    return $AssetsTable(attachedDatabase, alias);
  }
}

class Asset extends DataClass implements Insertable<Asset> {
  final String id;
  final String phoneId;
  final double valuation;
  final String premiumLevel;
  final double annualCost;
  final String? note;
  const Asset({
    required this.id,
    required this.phoneId,
    required this.valuation,
    required this.premiumLevel,
    required this.annualCost,
    this.note,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['phone_id'] = Variable<String>(phoneId);
    map['valuation'] = Variable<double>(valuation);
    map['premium_level'] = Variable<String>(premiumLevel);
    map['annual_cost'] = Variable<double>(annualCost);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    return map;
  }

  AssetsCompanion toCompanion(bool nullToAbsent) {
    return AssetsCompanion(
      id: Value(id),
      phoneId: Value(phoneId),
      valuation: Value(valuation),
      premiumLevel: Value(premiumLevel),
      annualCost: Value(annualCost),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
    );
  }

  factory Asset.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Asset(
      id: serializer.fromJson<String>(json['id']),
      phoneId: serializer.fromJson<String>(json['phoneId']),
      valuation: serializer.fromJson<double>(json['valuation']),
      premiumLevel: serializer.fromJson<String>(json['premiumLevel']),
      annualCost: serializer.fromJson<double>(json['annualCost']),
      note: serializer.fromJson<String?>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'phoneId': serializer.toJson<String>(phoneId),
      'valuation': serializer.toJson<double>(valuation),
      'premiumLevel': serializer.toJson<String>(premiumLevel),
      'annualCost': serializer.toJson<double>(annualCost),
      'note': serializer.toJson<String?>(note),
    };
  }

  Asset copyWith({
    String? id,
    String? phoneId,
    double? valuation,
    String? premiumLevel,
    double? annualCost,
    Value<String?> note = const Value.absent(),
  }) => Asset(
    id: id ?? this.id,
    phoneId: phoneId ?? this.phoneId,
    valuation: valuation ?? this.valuation,
    premiumLevel: premiumLevel ?? this.premiumLevel,
    annualCost: annualCost ?? this.annualCost,
    note: note.present ? note.value : this.note,
  );
  Asset copyWithCompanion(AssetsCompanion data) {
    return Asset(
      id: data.id.present ? data.id.value : this.id,
      phoneId: data.phoneId.present ? data.phoneId.value : this.phoneId,
      valuation: data.valuation.present ? data.valuation.value : this.valuation,
      premiumLevel: data.premiumLevel.present
          ? data.premiumLevel.value
          : this.premiumLevel,
      annualCost: data.annualCost.present
          ? data.annualCost.value
          : this.annualCost,
      note: data.note.present ? data.note.value : this.note,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Asset(')
          ..write('id: $id, ')
          ..write('phoneId: $phoneId, ')
          ..write('valuation: $valuation, ')
          ..write('premiumLevel: $premiumLevel, ')
          ..write('annualCost: $annualCost, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, phoneId, valuation, premiumLevel, annualCost, note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Asset &&
          other.id == this.id &&
          other.phoneId == this.phoneId &&
          other.valuation == this.valuation &&
          other.premiumLevel == this.premiumLevel &&
          other.annualCost == this.annualCost &&
          other.note == this.note);
}

class AssetsCompanion extends UpdateCompanion<Asset> {
  final Value<String> id;
  final Value<String> phoneId;
  final Value<double> valuation;
  final Value<String> premiumLevel;
  final Value<double> annualCost;
  final Value<String?> note;
  final Value<int> rowid;
  const AssetsCompanion({
    this.id = const Value.absent(),
    this.phoneId = const Value.absent(),
    this.valuation = const Value.absent(),
    this.premiumLevel = const Value.absent(),
    this.annualCost = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AssetsCompanion.insert({
    required String id,
    required String phoneId,
    this.valuation = const Value.absent(),
    this.premiumLevel = const Value.absent(),
    this.annualCost = const Value.absent(),
    this.note = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       phoneId = Value(phoneId);
  static Insertable<Asset> custom({
    Expression<String>? id,
    Expression<String>? phoneId,
    Expression<double>? valuation,
    Expression<String>? premiumLevel,
    Expression<double>? annualCost,
    Expression<String>? note,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (phoneId != null) 'phone_id': phoneId,
      if (valuation != null) 'valuation': valuation,
      if (premiumLevel != null) 'premium_level': premiumLevel,
      if (annualCost != null) 'annual_cost': annualCost,
      if (note != null) 'note': note,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AssetsCompanion copyWith({
    Value<String>? id,
    Value<String>? phoneId,
    Value<double>? valuation,
    Value<String>? premiumLevel,
    Value<double>? annualCost,
    Value<String?>? note,
    Value<int>? rowid,
  }) {
    return AssetsCompanion(
      id: id ?? this.id,
      phoneId: phoneId ?? this.phoneId,
      valuation: valuation ?? this.valuation,
      premiumLevel: premiumLevel ?? this.premiumLevel,
      annualCost: annualCost ?? this.annualCost,
      note: note ?? this.note,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (phoneId.present) {
      map['phone_id'] = Variable<String>(phoneId.value);
    }
    if (valuation.present) {
      map['valuation'] = Variable<double>(valuation.value);
    }
    if (premiumLevel.present) {
      map['premium_level'] = Variable<String>(premiumLevel.value);
    }
    if (annualCost.present) {
      map['annual_cost'] = Variable<double>(annualCost.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AssetsCompanion(')
          ..write('id: $id, ')
          ..write('phoneId: $phoneId, ')
          ..write('valuation: $valuation, ')
          ..write('premiumLevel: $premiumLevel, ')
          ..write('annualCost: $annualCost, ')
          ..write('note: $note, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MvnosTable extends Mvnos with TableInfo<$MvnosTable, Mvno> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MvnosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
    'brand',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _hostNetworkMeta = const VerificationMeta(
    'hostNetwork',
  );
  @override
  late final GeneratedColumn<String> hostNetwork = GeneratedColumn<String>(
    'host_network',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _serviceUrlMeta = const VerificationMeta(
    'serviceUrl',
  );
  @override
  late final GeneratedColumn<String> serviceUrl = GeneratedColumn<String>(
    'service_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _apnMeta = const VerificationMeta('apn');
  @override
  late final GeneratedColumn<String> apn = GeneratedColumn<String>(
    'apn',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _builtInMeta = const VerificationMeta(
    'builtIn',
  );
  @override
  late final GeneratedColumn<bool> builtIn = GeneratedColumn<bool>(
    'built_in',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("built_in" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    brand,
    hostNetwork,
    serviceUrl,
    apn,
    builtIn,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'mvnos';
  @override
  VerificationContext validateIntegrity(
    Insertable<Mvno> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('brand')) {
      context.handle(
        _brandMeta,
        brand.isAcceptableOrUnknown(data['brand']!, _brandMeta),
      );
    } else if (isInserting) {
      context.missing(_brandMeta);
    }
    if (data.containsKey('host_network')) {
      context.handle(
        _hostNetworkMeta,
        hostNetwork.isAcceptableOrUnknown(
          data['host_network']!,
          _hostNetworkMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_hostNetworkMeta);
    }
    if (data.containsKey('service_url')) {
      context.handle(
        _serviceUrlMeta,
        serviceUrl.isAcceptableOrUnknown(data['service_url']!, _serviceUrlMeta),
      );
    }
    if (data.containsKey('apn')) {
      context.handle(
        _apnMeta,
        apn.isAcceptableOrUnknown(data['apn']!, _apnMeta),
      );
    }
    if (data.containsKey('built_in')) {
      context.handle(
        _builtInMeta,
        builtIn.isAcceptableOrUnknown(data['built_in']!, _builtInMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Mvno map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Mvno(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      brand: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}brand'],
      )!,
      hostNetwork: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}host_network'],
      )!,
      serviceUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}service_url'],
      ),
      apn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}apn'],
      ),
      builtIn: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}built_in'],
      )!,
    );
  }

  @override
  $MvnosTable createAlias(String alias) {
    return $MvnosTable(attachedDatabase, alias);
  }
}

class Mvno extends DataClass implements Insertable<Mvno> {
  final String id;
  final String brand;
  final String hostNetwork;
  final String? serviceUrl;
  final String? apn;
  final bool builtIn;
  const Mvno({
    required this.id,
    required this.brand,
    required this.hostNetwork,
    this.serviceUrl,
    this.apn,
    required this.builtIn,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['brand'] = Variable<String>(brand);
    map['host_network'] = Variable<String>(hostNetwork);
    if (!nullToAbsent || serviceUrl != null) {
      map['service_url'] = Variable<String>(serviceUrl);
    }
    if (!nullToAbsent || apn != null) {
      map['apn'] = Variable<String>(apn);
    }
    map['built_in'] = Variable<bool>(builtIn);
    return map;
  }

  MvnosCompanion toCompanion(bool nullToAbsent) {
    return MvnosCompanion(
      id: Value(id),
      brand: Value(brand),
      hostNetwork: Value(hostNetwork),
      serviceUrl: serviceUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(serviceUrl),
      apn: apn == null && nullToAbsent ? const Value.absent() : Value(apn),
      builtIn: Value(builtIn),
    );
  }

  factory Mvno.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Mvno(
      id: serializer.fromJson<String>(json['id']),
      brand: serializer.fromJson<String>(json['brand']),
      hostNetwork: serializer.fromJson<String>(json['hostNetwork']),
      serviceUrl: serializer.fromJson<String?>(json['serviceUrl']),
      apn: serializer.fromJson<String?>(json['apn']),
      builtIn: serializer.fromJson<bool>(json['builtIn']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'brand': serializer.toJson<String>(brand),
      'hostNetwork': serializer.toJson<String>(hostNetwork),
      'serviceUrl': serializer.toJson<String?>(serviceUrl),
      'apn': serializer.toJson<String?>(apn),
      'builtIn': serializer.toJson<bool>(builtIn),
    };
  }

  Mvno copyWith({
    String? id,
    String? brand,
    String? hostNetwork,
    Value<String?> serviceUrl = const Value.absent(),
    Value<String?> apn = const Value.absent(),
    bool? builtIn,
  }) => Mvno(
    id: id ?? this.id,
    brand: brand ?? this.brand,
    hostNetwork: hostNetwork ?? this.hostNetwork,
    serviceUrl: serviceUrl.present ? serviceUrl.value : this.serviceUrl,
    apn: apn.present ? apn.value : this.apn,
    builtIn: builtIn ?? this.builtIn,
  );
  Mvno copyWithCompanion(MvnosCompanion data) {
    return Mvno(
      id: data.id.present ? data.id.value : this.id,
      brand: data.brand.present ? data.brand.value : this.brand,
      hostNetwork: data.hostNetwork.present
          ? data.hostNetwork.value
          : this.hostNetwork,
      serviceUrl: data.serviceUrl.present
          ? data.serviceUrl.value
          : this.serviceUrl,
      apn: data.apn.present ? data.apn.value : this.apn,
      builtIn: data.builtIn.present ? data.builtIn.value : this.builtIn,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Mvno(')
          ..write('id: $id, ')
          ..write('brand: $brand, ')
          ..write('hostNetwork: $hostNetwork, ')
          ..write('serviceUrl: $serviceUrl, ')
          ..write('apn: $apn, ')
          ..write('builtIn: $builtIn')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, brand, hostNetwork, serviceUrl, apn, builtIn);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Mvno &&
          other.id == this.id &&
          other.brand == this.brand &&
          other.hostNetwork == this.hostNetwork &&
          other.serviceUrl == this.serviceUrl &&
          other.apn == this.apn &&
          other.builtIn == this.builtIn);
}

class MvnosCompanion extends UpdateCompanion<Mvno> {
  final Value<String> id;
  final Value<String> brand;
  final Value<String> hostNetwork;
  final Value<String?> serviceUrl;
  final Value<String?> apn;
  final Value<bool> builtIn;
  final Value<int> rowid;
  const MvnosCompanion({
    this.id = const Value.absent(),
    this.brand = const Value.absent(),
    this.hostNetwork = const Value.absent(),
    this.serviceUrl = const Value.absent(),
    this.apn = const Value.absent(),
    this.builtIn = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MvnosCompanion.insert({
    required String id,
    required String brand,
    required String hostNetwork,
    this.serviceUrl = const Value.absent(),
    this.apn = const Value.absent(),
    this.builtIn = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       brand = Value(brand),
       hostNetwork = Value(hostNetwork);
  static Insertable<Mvno> custom({
    Expression<String>? id,
    Expression<String>? brand,
    Expression<String>? hostNetwork,
    Expression<String>? serviceUrl,
    Expression<String>? apn,
    Expression<bool>? builtIn,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (brand != null) 'brand': brand,
      if (hostNetwork != null) 'host_network': hostNetwork,
      if (serviceUrl != null) 'service_url': serviceUrl,
      if (apn != null) 'apn': apn,
      if (builtIn != null) 'built_in': builtIn,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MvnosCompanion copyWith({
    Value<String>? id,
    Value<String>? brand,
    Value<String>? hostNetwork,
    Value<String?>? serviceUrl,
    Value<String?>? apn,
    Value<bool>? builtIn,
    Value<int>? rowid,
  }) {
    return MvnosCompanion(
      id: id ?? this.id,
      brand: brand ?? this.brand,
      hostNetwork: hostNetwork ?? this.hostNetwork,
      serviceUrl: serviceUrl ?? this.serviceUrl,
      apn: apn ?? this.apn,
      builtIn: builtIn ?? this.builtIn,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (hostNetwork.present) {
      map['host_network'] = Variable<String>(hostNetwork.value);
    }
    if (serviceUrl.present) {
      map['service_url'] = Variable<String>(serviceUrl.value);
    }
    if (apn.present) {
      map['apn'] = Variable<String>(apn.value);
    }
    if (builtIn.present) {
      map['built_in'] = Variable<bool>(builtIn.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MvnosCompanion(')
          ..write('id: $id, ')
          ..write('brand: $brand, ')
          ..write('hostNetwork: $hostNetwork, ')
          ..write('serviceUrl: $serviceUrl, ')
          ..write('apn: $apn, ')
          ..write('builtIn: $builtIn, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PhoneNumbersTable phoneNumbers = $PhoneNumbersTable(this);
  late final $PlansTable plans = $PlansTable(this);
  late final $KeepAliveRulesTable keepAliveRules = $KeepAliveRulesTable(this);
  late final $ActivitiesTable activities = $ActivitiesTable(this);
  late final $AssetsTable assets = $AssetsTable(this);
  late final $MvnosTable mvnos = $MvnosTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    phoneNumbers,
    plans,
    keepAliveRules,
    activities,
    assets,
    mvnos,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'phone_numbers',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('plans', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'phone_numbers',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('keep_alive_rules', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'phone_numbers',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('activities', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'phone_numbers',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('assets', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$PhoneNumbersTableCreateCompanionBuilder =
    PhoneNumbersCompanion Function({
      required String id,
      required String number,
      required String carrier,
      Value<String?> mvnoId,
      Value<String> purpose,
      Value<String?> iccid,
      Value<String> status,
      Value<String?> note,
      Value<DateTime?> joinedAt,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });
typedef $$PhoneNumbersTableUpdateCompanionBuilder =
    PhoneNumbersCompanion Function({
      Value<String> id,
      Value<String> number,
      Value<String> carrier,
      Value<String?> mvnoId,
      Value<String> purpose,
      Value<String?> iccid,
      Value<String> status,
      Value<String?> note,
      Value<DateTime?> joinedAt,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

final class $$PhoneNumbersTableReferences
    extends BaseReferences<_$AppDatabase, $PhoneNumbersTable, PhoneNumber> {
  $$PhoneNumbersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PlansTable, List<Plan>> _plansRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.plans,
    aliasName: 'phone_numbers__id__plans__phone_id',
  );

  $$PlansTableProcessedTableManager get plansRefs {
    final manager = $$PlansTableTableManager(
      $_db,
      $_db.plans,
    ).filter((f) => f.phoneId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_plansRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$KeepAliveRulesTable, List<KeepAliveRule>>
  _keepAliveRulesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.keepAliveRules,
    aliasName: 'phone_numbers__id__keep_alive_rules__phone_id',
  );

  $$KeepAliveRulesTableProcessedTableManager get keepAliveRulesRefs {
    final manager = $$KeepAliveRulesTableTableManager(
      $_db,
      $_db.keepAliveRules,
    ).filter((f) => f.phoneId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_keepAliveRulesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ActivitiesTable, List<Activity>>
  _activitiesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.activities,
    aliasName: 'phone_numbers__id__activities__phone_id',
  );

  $$ActivitiesTableProcessedTableManager get activitiesRefs {
    final manager = $$ActivitiesTableTableManager(
      $_db,
      $_db.activities,
    ).filter((f) => f.phoneId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_activitiesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$AssetsTable, List<Asset>> _assetsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.assets,
    aliasName: 'phone_numbers__id__assets__phone_id',
  );

  $$AssetsTableProcessedTableManager get assetsRefs {
    final manager = $$AssetsTableTableManager(
      $_db,
      $_db.assets,
    ).filter((f) => f.phoneId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_assetsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PhoneNumbersTableFilterComposer
    extends Composer<_$AppDatabase, $PhoneNumbersTable> {
  $$PhoneNumbersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get carrier => $composableBuilder(
    column: $table.carrier,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mvnoId => $composableBuilder(
    column: $table.mvnoId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get purpose => $composableBuilder(
    column: $table.purpose,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get iccid => $composableBuilder(
    column: $table.iccid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get joinedAt => $composableBuilder(
    column: $table.joinedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> plansRefs(
    Expression<bool> Function($$PlansTableFilterComposer f) f,
  ) {
    final $$PlansTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.plans,
      getReferencedColumn: (t) => t.phoneId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlansTableFilterComposer(
            $db: $db,
            $table: $db.plans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> keepAliveRulesRefs(
    Expression<bool> Function($$KeepAliveRulesTableFilterComposer f) f,
  ) {
    final $$KeepAliveRulesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.keepAliveRules,
      getReferencedColumn: (t) => t.phoneId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$KeepAliveRulesTableFilterComposer(
            $db: $db,
            $table: $db.keepAliveRules,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> activitiesRefs(
    Expression<bool> Function($$ActivitiesTableFilterComposer f) f,
  ) {
    final $$ActivitiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.activities,
      getReferencedColumn: (t) => t.phoneId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ActivitiesTableFilterComposer(
            $db: $db,
            $table: $db.activities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> assetsRefs(
    Expression<bool> Function($$AssetsTableFilterComposer f) f,
  ) {
    final $$AssetsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.assets,
      getReferencedColumn: (t) => t.phoneId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AssetsTableFilterComposer(
            $db: $db,
            $table: $db.assets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PhoneNumbersTableOrderingComposer
    extends Composer<_$AppDatabase, $PhoneNumbersTable> {
  $$PhoneNumbersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get carrier => $composableBuilder(
    column: $table.carrier,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mvnoId => $composableBuilder(
    column: $table.mvnoId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get purpose => $composableBuilder(
    column: $table.purpose,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get iccid => $composableBuilder(
    column: $table.iccid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get joinedAt => $composableBuilder(
    column: $table.joinedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PhoneNumbersTableAnnotationComposer
    extends Composer<_$AppDatabase, $PhoneNumbersTable> {
  $$PhoneNumbersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<String> get carrier =>
      $composableBuilder(column: $table.carrier, builder: (column) => column);

  GeneratedColumn<String> get mvnoId =>
      $composableBuilder(column: $table.mvnoId, builder: (column) => column);

  GeneratedColumn<String> get purpose =>
      $composableBuilder(column: $table.purpose, builder: (column) => column);

  GeneratedColumn<String> get iccid =>
      $composableBuilder(column: $table.iccid, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<DateTime> get joinedAt =>
      $composableBuilder(column: $table.joinedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> plansRefs<T extends Object>(
    Expression<T> Function($$PlansTableAnnotationComposer a) f,
  ) {
    final $$PlansTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.plans,
      getReferencedColumn: (t) => t.phoneId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PlansTableAnnotationComposer(
            $db: $db,
            $table: $db.plans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> keepAliveRulesRefs<T extends Object>(
    Expression<T> Function($$KeepAliveRulesTableAnnotationComposer a) f,
  ) {
    final $$KeepAliveRulesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.keepAliveRules,
      getReferencedColumn: (t) => t.phoneId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$KeepAliveRulesTableAnnotationComposer(
            $db: $db,
            $table: $db.keepAliveRules,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> activitiesRefs<T extends Object>(
    Expression<T> Function($$ActivitiesTableAnnotationComposer a) f,
  ) {
    final $$ActivitiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.activities,
      getReferencedColumn: (t) => t.phoneId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ActivitiesTableAnnotationComposer(
            $db: $db,
            $table: $db.activities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> assetsRefs<T extends Object>(
    Expression<T> Function($$AssetsTableAnnotationComposer a) f,
  ) {
    final $$AssetsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.assets,
      getReferencedColumn: (t) => t.phoneId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AssetsTableAnnotationComposer(
            $db: $db,
            $table: $db.assets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PhoneNumbersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PhoneNumbersTable,
          PhoneNumber,
          $$PhoneNumbersTableFilterComposer,
          $$PhoneNumbersTableOrderingComposer,
          $$PhoneNumbersTableAnnotationComposer,
          $$PhoneNumbersTableCreateCompanionBuilder,
          $$PhoneNumbersTableUpdateCompanionBuilder,
          (PhoneNumber, $$PhoneNumbersTableReferences),
          PhoneNumber,
          PrefetchHooks Function({
            bool plansRefs,
            bool keepAliveRulesRefs,
            bool activitiesRefs,
            bool assetsRefs,
          })
        > {
  $$PhoneNumbersTableTableManager(_$AppDatabase db, $PhoneNumbersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PhoneNumbersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PhoneNumbersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PhoneNumbersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> number = const Value.absent(),
                Value<String> carrier = const Value.absent(),
                Value<String?> mvnoId = const Value.absent(),
                Value<String> purpose = const Value.absent(),
                Value<String?> iccid = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<DateTime?> joinedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PhoneNumbersCompanion(
                id: id,
                number: number,
                carrier: carrier,
                mvnoId: mvnoId,
                purpose: purpose,
                iccid: iccid,
                status: status,
                note: note,
                joinedAt: joinedAt,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String number,
                required String carrier,
                Value<String?> mvnoId = const Value.absent(),
                Value<String> purpose = const Value.absent(),
                Value<String?> iccid = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<DateTime?> joinedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PhoneNumbersCompanion.insert(
                id: id,
                number: number,
                carrier: carrier,
                mvnoId: mvnoId,
                purpose: purpose,
                iccid: iccid,
                status: status,
                note: note,
                joinedAt: joinedAt,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PhoneNumbersTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                plansRefs = false,
                keepAliveRulesRefs = false,
                activitiesRefs = false,
                assetsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (plansRefs) db.plans,
                    if (keepAliveRulesRefs) db.keepAliveRules,
                    if (activitiesRefs) db.activities,
                    if (assetsRefs) db.assets,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (plansRefs)
                        await $_getPrefetchedData<
                          PhoneNumber,
                          $PhoneNumbersTable,
                          Plan
                        >(
                          currentTable: table,
                          referencedTable: $$PhoneNumbersTableReferences
                              ._plansRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PhoneNumbersTableReferences(
                                db,
                                table,
                                p0,
                              ).plansRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.phoneId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (keepAliveRulesRefs)
                        await $_getPrefetchedData<
                          PhoneNumber,
                          $PhoneNumbersTable,
                          KeepAliveRule
                        >(
                          currentTable: table,
                          referencedTable: $$PhoneNumbersTableReferences
                              ._keepAliveRulesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PhoneNumbersTableReferences(
                                db,
                                table,
                                p0,
                              ).keepAliveRulesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.phoneId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (activitiesRefs)
                        await $_getPrefetchedData<
                          PhoneNumber,
                          $PhoneNumbersTable,
                          Activity
                        >(
                          currentTable: table,
                          referencedTable: $$PhoneNumbersTableReferences
                              ._activitiesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PhoneNumbersTableReferences(
                                db,
                                table,
                                p0,
                              ).activitiesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.phoneId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (assetsRefs)
                        await $_getPrefetchedData<
                          PhoneNumber,
                          $PhoneNumbersTable,
                          Asset
                        >(
                          currentTable: table,
                          referencedTable: $$PhoneNumbersTableReferences
                              ._assetsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PhoneNumbersTableReferences(
                                db,
                                table,
                                p0,
                              ).assetsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.phoneId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$PhoneNumbersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PhoneNumbersTable,
      PhoneNumber,
      $$PhoneNumbersTableFilterComposer,
      $$PhoneNumbersTableOrderingComposer,
      $$PhoneNumbersTableAnnotationComposer,
      $$PhoneNumbersTableCreateCompanionBuilder,
      $$PhoneNumbersTableUpdateCompanionBuilder,
      (PhoneNumber, $$PhoneNumbersTableReferences),
      PhoneNumber,
      PrefetchHooks Function({
        bool plansRefs,
        bool keepAliveRulesRefs,
        bool activitiesRefs,
        bool assetsRefs,
      })
    >;
typedef $$PlansTableCreateCompanionBuilder =
    PlansCompanion Function({
      required String id,
      required String phoneId,
      required String name,
      Value<double> monthlyFee,
      Value<double> dataGb,
      Value<int> voiceMin,
      required DateTime startDate,
      Value<DateTime?> endDate,
      Value<String?> note,
      Value<int> rowid,
    });
typedef $$PlansTableUpdateCompanionBuilder =
    PlansCompanion Function({
      Value<String> id,
      Value<String> phoneId,
      Value<String> name,
      Value<double> monthlyFee,
      Value<double> dataGb,
      Value<int> voiceMin,
      Value<DateTime> startDate,
      Value<DateTime?> endDate,
      Value<String?> note,
      Value<int> rowid,
    });

final class $$PlansTableReferences
    extends BaseReferences<_$AppDatabase, $PlansTable, Plan> {
  $$PlansTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PhoneNumbersTable _phoneIdTable(_$AppDatabase db) =>
      db.phoneNumbers.createAlias('plans__phone_id__phone_numbers__id');

  $$PhoneNumbersTableProcessedTableManager get phoneId {
    final $_column = $_itemColumn<String>('phone_id')!;

    final manager = $$PhoneNumbersTableTableManager(
      $_db,
      $_db.phoneNumbers,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_phoneIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PlansTableFilterComposer extends Composer<_$AppDatabase, $PlansTable> {
  $$PlansTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get monthlyFee => $composableBuilder(
    column: $table.monthlyFee,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dataGb => $composableBuilder(
    column: $table.dataGb,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get voiceMin => $composableBuilder(
    column: $table.voiceMin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  $$PhoneNumbersTableFilterComposer get phoneId {
    final $$PhoneNumbersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.phoneId,
      referencedTable: $db.phoneNumbers,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhoneNumbersTableFilterComposer(
            $db: $db,
            $table: $db.phoneNumbers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PlansTableOrderingComposer
    extends Composer<_$AppDatabase, $PlansTable> {
  $$PlansTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get monthlyFee => $composableBuilder(
    column: $table.monthlyFee,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dataGb => $composableBuilder(
    column: $table.dataGb,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get voiceMin => $composableBuilder(
    column: $table.voiceMin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endDate => $composableBuilder(
    column: $table.endDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  $$PhoneNumbersTableOrderingComposer get phoneId {
    final $$PhoneNumbersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.phoneId,
      referencedTable: $db.phoneNumbers,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhoneNumbersTableOrderingComposer(
            $db: $db,
            $table: $db.phoneNumbers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PlansTableAnnotationComposer
    extends Composer<_$AppDatabase, $PlansTable> {
  $$PlansTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<double> get monthlyFee => $composableBuilder(
    column: $table.monthlyFee,
    builder: (column) => column,
  );

  GeneratedColumn<double> get dataGb =>
      $composableBuilder(column: $table.dataGb, builder: (column) => column);

  GeneratedColumn<int> get voiceMin =>
      $composableBuilder(column: $table.voiceMin, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get endDate =>
      $composableBuilder(column: $table.endDate, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  $$PhoneNumbersTableAnnotationComposer get phoneId {
    final $$PhoneNumbersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.phoneId,
      referencedTable: $db.phoneNumbers,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhoneNumbersTableAnnotationComposer(
            $db: $db,
            $table: $db.phoneNumbers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PlansTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PlansTable,
          Plan,
          $$PlansTableFilterComposer,
          $$PlansTableOrderingComposer,
          $$PlansTableAnnotationComposer,
          $$PlansTableCreateCompanionBuilder,
          $$PlansTableUpdateCompanionBuilder,
          (Plan, $$PlansTableReferences),
          Plan,
          PrefetchHooks Function({bool phoneId})
        > {
  $$PlansTableTableManager(_$AppDatabase db, $PlansTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PlansTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PlansTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PlansTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> phoneId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<double> monthlyFee = const Value.absent(),
                Value<double> dataGb = const Value.absent(),
                Value<int> voiceMin = const Value.absent(),
                Value<DateTime> startDate = const Value.absent(),
                Value<DateTime?> endDate = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PlansCompanion(
                id: id,
                phoneId: phoneId,
                name: name,
                monthlyFee: monthlyFee,
                dataGb: dataGb,
                voiceMin: voiceMin,
                startDate: startDate,
                endDate: endDate,
                note: note,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String phoneId,
                required String name,
                Value<double> monthlyFee = const Value.absent(),
                Value<double> dataGb = const Value.absent(),
                Value<int> voiceMin = const Value.absent(),
                required DateTime startDate,
                Value<DateTime?> endDate = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PlansCompanion.insert(
                id: id,
                phoneId: phoneId,
                name: name,
                monthlyFee: monthlyFee,
                dataGb: dataGb,
                voiceMin: voiceMin,
                startDate: startDate,
                endDate: endDate,
                note: note,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$PlansTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({phoneId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (phoneId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.phoneId,
                                referencedTable: $$PlansTableReferences
                                    ._phoneIdTable(db),
                                referencedColumn: $$PlansTableReferences
                                    ._phoneIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PlansTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PlansTable,
      Plan,
      $$PlansTableFilterComposer,
      $$PlansTableOrderingComposer,
      $$PlansTableAnnotationComposer,
      $$PlansTableCreateCompanionBuilder,
      $$PlansTableUpdateCompanionBuilder,
      (Plan, $$PlansTableReferences),
      Plan,
      PrefetchHooks Function({bool phoneId})
    >;
typedef $$KeepAliveRulesTableCreateCompanionBuilder =
    KeepAliveRulesCompanion Function({
      required String id,
      required String phoneId,
      required String ruleType,
      required int periodDays,
      Value<DateTime?> lastActiveAt,
      Value<DateTime?> nextRemindAt,
      Value<bool> enabled,
      Value<int> rowid,
    });
typedef $$KeepAliveRulesTableUpdateCompanionBuilder =
    KeepAliveRulesCompanion Function({
      Value<String> id,
      Value<String> phoneId,
      Value<String> ruleType,
      Value<int> periodDays,
      Value<DateTime?> lastActiveAt,
      Value<DateTime?> nextRemindAt,
      Value<bool> enabled,
      Value<int> rowid,
    });

final class $$KeepAliveRulesTableReferences
    extends BaseReferences<_$AppDatabase, $KeepAliveRulesTable, KeepAliveRule> {
  $$KeepAliveRulesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PhoneNumbersTable _phoneIdTable(_$AppDatabase db) => db.phoneNumbers
      .createAlias('keep_alive_rules__phone_id__phone_numbers__id');

  $$PhoneNumbersTableProcessedTableManager get phoneId {
    final $_column = $_itemColumn<String>('phone_id')!;

    final manager = $$PhoneNumbersTableTableManager(
      $_db,
      $_db.phoneNumbers,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_phoneIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$KeepAliveRulesTableFilterComposer
    extends Composer<_$AppDatabase, $KeepAliveRulesTable> {
  $$KeepAliveRulesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ruleType => $composableBuilder(
    column: $table.ruleType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get periodDays => $composableBuilder(
    column: $table.periodDays,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastActiveAt => $composableBuilder(
    column: $table.lastActiveAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get nextRemindAt => $composableBuilder(
    column: $table.nextRemindAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enabled => $composableBuilder(
    column: $table.enabled,
    builder: (column) => ColumnFilters(column),
  );

  $$PhoneNumbersTableFilterComposer get phoneId {
    final $$PhoneNumbersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.phoneId,
      referencedTable: $db.phoneNumbers,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhoneNumbersTableFilterComposer(
            $db: $db,
            $table: $db.phoneNumbers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$KeepAliveRulesTableOrderingComposer
    extends Composer<_$AppDatabase, $KeepAliveRulesTable> {
  $$KeepAliveRulesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ruleType => $composableBuilder(
    column: $table.ruleType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get periodDays => $composableBuilder(
    column: $table.periodDays,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastActiveAt => $composableBuilder(
    column: $table.lastActiveAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get nextRemindAt => $composableBuilder(
    column: $table.nextRemindAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enabled => $composableBuilder(
    column: $table.enabled,
    builder: (column) => ColumnOrderings(column),
  );

  $$PhoneNumbersTableOrderingComposer get phoneId {
    final $$PhoneNumbersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.phoneId,
      referencedTable: $db.phoneNumbers,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhoneNumbersTableOrderingComposer(
            $db: $db,
            $table: $db.phoneNumbers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$KeepAliveRulesTableAnnotationComposer
    extends Composer<_$AppDatabase, $KeepAliveRulesTable> {
  $$KeepAliveRulesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get ruleType =>
      $composableBuilder(column: $table.ruleType, builder: (column) => column);

  GeneratedColumn<int> get periodDays => $composableBuilder(
    column: $table.periodDays,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastActiveAt => $composableBuilder(
    column: $table.lastActiveAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get nextRemindAt => $composableBuilder(
    column: $table.nextRemindAt,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enabled =>
      $composableBuilder(column: $table.enabled, builder: (column) => column);

  $$PhoneNumbersTableAnnotationComposer get phoneId {
    final $$PhoneNumbersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.phoneId,
      referencedTable: $db.phoneNumbers,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhoneNumbersTableAnnotationComposer(
            $db: $db,
            $table: $db.phoneNumbers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$KeepAliveRulesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $KeepAliveRulesTable,
          KeepAliveRule,
          $$KeepAliveRulesTableFilterComposer,
          $$KeepAliveRulesTableOrderingComposer,
          $$KeepAliveRulesTableAnnotationComposer,
          $$KeepAliveRulesTableCreateCompanionBuilder,
          $$KeepAliveRulesTableUpdateCompanionBuilder,
          (KeepAliveRule, $$KeepAliveRulesTableReferences),
          KeepAliveRule,
          PrefetchHooks Function({bool phoneId})
        > {
  $$KeepAliveRulesTableTableManager(
    _$AppDatabase db,
    $KeepAliveRulesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$KeepAliveRulesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$KeepAliveRulesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$KeepAliveRulesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> phoneId = const Value.absent(),
                Value<String> ruleType = const Value.absent(),
                Value<int> periodDays = const Value.absent(),
                Value<DateTime?> lastActiveAt = const Value.absent(),
                Value<DateTime?> nextRemindAt = const Value.absent(),
                Value<bool> enabled = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => KeepAliveRulesCompanion(
                id: id,
                phoneId: phoneId,
                ruleType: ruleType,
                periodDays: periodDays,
                lastActiveAt: lastActiveAt,
                nextRemindAt: nextRemindAt,
                enabled: enabled,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String phoneId,
                required String ruleType,
                required int periodDays,
                Value<DateTime?> lastActiveAt = const Value.absent(),
                Value<DateTime?> nextRemindAt = const Value.absent(),
                Value<bool> enabled = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => KeepAliveRulesCompanion.insert(
                id: id,
                phoneId: phoneId,
                ruleType: ruleType,
                periodDays: periodDays,
                lastActiveAt: lastActiveAt,
                nextRemindAt: nextRemindAt,
                enabled: enabled,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$KeepAliveRulesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({phoneId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (phoneId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.phoneId,
                                referencedTable: $$KeepAliveRulesTableReferences
                                    ._phoneIdTable(db),
                                referencedColumn:
                                    $$KeepAliveRulesTableReferences
                                        ._phoneIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$KeepAliveRulesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $KeepAliveRulesTable,
      KeepAliveRule,
      $$KeepAliveRulesTableFilterComposer,
      $$KeepAliveRulesTableOrderingComposer,
      $$KeepAliveRulesTableAnnotationComposer,
      $$KeepAliveRulesTableCreateCompanionBuilder,
      $$KeepAliveRulesTableUpdateCompanionBuilder,
      (KeepAliveRule, $$KeepAliveRulesTableReferences),
      KeepAliveRule,
      PrefetchHooks Function({bool phoneId})
    >;
typedef $$ActivitiesTableCreateCompanionBuilder =
    ActivitiesCompanion Function({
      required String id,
      required String phoneId,
      required String type,
      required DateTime occurredAt,
      Value<double> amount,
      Value<String?> note,
      Value<int> rowid,
    });
typedef $$ActivitiesTableUpdateCompanionBuilder =
    ActivitiesCompanion Function({
      Value<String> id,
      Value<String> phoneId,
      Value<String> type,
      Value<DateTime> occurredAt,
      Value<double> amount,
      Value<String?> note,
      Value<int> rowid,
    });

final class $$ActivitiesTableReferences
    extends BaseReferences<_$AppDatabase, $ActivitiesTable, Activity> {
  $$ActivitiesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PhoneNumbersTable _phoneIdTable(_$AppDatabase db) =>
      db.phoneNumbers.createAlias('activities__phone_id__phone_numbers__id');

  $$PhoneNumbersTableProcessedTableManager get phoneId {
    final $_column = $_itemColumn<String>('phone_id')!;

    final manager = $$PhoneNumbersTableTableManager(
      $_db,
      $_db.phoneNumbers,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_phoneIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ActivitiesTableFilterComposer
    extends Composer<_$AppDatabase, $ActivitiesTable> {
  $$ActivitiesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get occurredAt => $composableBuilder(
    column: $table.occurredAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  $$PhoneNumbersTableFilterComposer get phoneId {
    final $$PhoneNumbersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.phoneId,
      referencedTable: $db.phoneNumbers,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhoneNumbersTableFilterComposer(
            $db: $db,
            $table: $db.phoneNumbers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ActivitiesTableOrderingComposer
    extends Composer<_$AppDatabase, $ActivitiesTable> {
  $$ActivitiesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get occurredAt => $composableBuilder(
    column: $table.occurredAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  $$PhoneNumbersTableOrderingComposer get phoneId {
    final $$PhoneNumbersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.phoneId,
      referencedTable: $db.phoneNumbers,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhoneNumbersTableOrderingComposer(
            $db: $db,
            $table: $db.phoneNumbers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ActivitiesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ActivitiesTable> {
  $$ActivitiesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<DateTime> get occurredAt => $composableBuilder(
    column: $table.occurredAt,
    builder: (column) => column,
  );

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  $$PhoneNumbersTableAnnotationComposer get phoneId {
    final $$PhoneNumbersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.phoneId,
      referencedTable: $db.phoneNumbers,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhoneNumbersTableAnnotationComposer(
            $db: $db,
            $table: $db.phoneNumbers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ActivitiesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ActivitiesTable,
          Activity,
          $$ActivitiesTableFilterComposer,
          $$ActivitiesTableOrderingComposer,
          $$ActivitiesTableAnnotationComposer,
          $$ActivitiesTableCreateCompanionBuilder,
          $$ActivitiesTableUpdateCompanionBuilder,
          (Activity, $$ActivitiesTableReferences),
          Activity,
          PrefetchHooks Function({bool phoneId})
        > {
  $$ActivitiesTableTableManager(_$AppDatabase db, $ActivitiesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ActivitiesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ActivitiesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ActivitiesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> phoneId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<DateTime> occurredAt = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ActivitiesCompanion(
                id: id,
                phoneId: phoneId,
                type: type,
                occurredAt: occurredAt,
                amount: amount,
                note: note,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String phoneId,
                required String type,
                required DateTime occurredAt,
                Value<double> amount = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ActivitiesCompanion.insert(
                id: id,
                phoneId: phoneId,
                type: type,
                occurredAt: occurredAt,
                amount: amount,
                note: note,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ActivitiesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({phoneId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (phoneId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.phoneId,
                                referencedTable: $$ActivitiesTableReferences
                                    ._phoneIdTable(db),
                                referencedColumn: $$ActivitiesTableReferences
                                    ._phoneIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ActivitiesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ActivitiesTable,
      Activity,
      $$ActivitiesTableFilterComposer,
      $$ActivitiesTableOrderingComposer,
      $$ActivitiesTableAnnotationComposer,
      $$ActivitiesTableCreateCompanionBuilder,
      $$ActivitiesTableUpdateCompanionBuilder,
      (Activity, $$ActivitiesTableReferences),
      Activity,
      PrefetchHooks Function({bool phoneId})
    >;
typedef $$AssetsTableCreateCompanionBuilder =
    AssetsCompanion Function({
      required String id,
      required String phoneId,
      Value<double> valuation,
      Value<String> premiumLevel,
      Value<double> annualCost,
      Value<String?> note,
      Value<int> rowid,
    });
typedef $$AssetsTableUpdateCompanionBuilder =
    AssetsCompanion Function({
      Value<String> id,
      Value<String> phoneId,
      Value<double> valuation,
      Value<String> premiumLevel,
      Value<double> annualCost,
      Value<String?> note,
      Value<int> rowid,
    });

final class $$AssetsTableReferences
    extends BaseReferences<_$AppDatabase, $AssetsTable, Asset> {
  $$AssetsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PhoneNumbersTable _phoneIdTable(_$AppDatabase db) =>
      db.phoneNumbers.createAlias('assets__phone_id__phone_numbers__id');

  $$PhoneNumbersTableProcessedTableManager get phoneId {
    final $_column = $_itemColumn<String>('phone_id')!;

    final manager = $$PhoneNumbersTableTableManager(
      $_db,
      $_db.phoneNumbers,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_phoneIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$AssetsTableFilterComposer
    extends Composer<_$AppDatabase, $AssetsTable> {
  $$AssetsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get valuation => $composableBuilder(
    column: $table.valuation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get premiumLevel => $composableBuilder(
    column: $table.premiumLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get annualCost => $composableBuilder(
    column: $table.annualCost,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  $$PhoneNumbersTableFilterComposer get phoneId {
    final $$PhoneNumbersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.phoneId,
      referencedTable: $db.phoneNumbers,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhoneNumbersTableFilterComposer(
            $db: $db,
            $table: $db.phoneNumbers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AssetsTableOrderingComposer
    extends Composer<_$AppDatabase, $AssetsTable> {
  $$AssetsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get valuation => $composableBuilder(
    column: $table.valuation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get premiumLevel => $composableBuilder(
    column: $table.premiumLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get annualCost => $composableBuilder(
    column: $table.annualCost,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  $$PhoneNumbersTableOrderingComposer get phoneId {
    final $$PhoneNumbersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.phoneId,
      referencedTable: $db.phoneNumbers,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhoneNumbersTableOrderingComposer(
            $db: $db,
            $table: $db.phoneNumbers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AssetsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AssetsTable> {
  $$AssetsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get valuation =>
      $composableBuilder(column: $table.valuation, builder: (column) => column);

  GeneratedColumn<String> get premiumLevel => $composableBuilder(
    column: $table.premiumLevel,
    builder: (column) => column,
  );

  GeneratedColumn<double> get annualCost => $composableBuilder(
    column: $table.annualCost,
    builder: (column) => column,
  );

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  $$PhoneNumbersTableAnnotationComposer get phoneId {
    final $$PhoneNumbersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.phoneId,
      referencedTable: $db.phoneNumbers,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhoneNumbersTableAnnotationComposer(
            $db: $db,
            $table: $db.phoneNumbers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AssetsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AssetsTable,
          Asset,
          $$AssetsTableFilterComposer,
          $$AssetsTableOrderingComposer,
          $$AssetsTableAnnotationComposer,
          $$AssetsTableCreateCompanionBuilder,
          $$AssetsTableUpdateCompanionBuilder,
          (Asset, $$AssetsTableReferences),
          Asset,
          PrefetchHooks Function({bool phoneId})
        > {
  $$AssetsTableTableManager(_$AppDatabase db, $AssetsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AssetsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AssetsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AssetsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> phoneId = const Value.absent(),
                Value<double> valuation = const Value.absent(),
                Value<String> premiumLevel = const Value.absent(),
                Value<double> annualCost = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AssetsCompanion(
                id: id,
                phoneId: phoneId,
                valuation: valuation,
                premiumLevel: premiumLevel,
                annualCost: annualCost,
                note: note,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String phoneId,
                Value<double> valuation = const Value.absent(),
                Value<String> premiumLevel = const Value.absent(),
                Value<double> annualCost = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AssetsCompanion.insert(
                id: id,
                phoneId: phoneId,
                valuation: valuation,
                premiumLevel: premiumLevel,
                annualCost: annualCost,
                note: note,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$AssetsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({phoneId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (phoneId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.phoneId,
                                referencedTable: $$AssetsTableReferences
                                    ._phoneIdTable(db),
                                referencedColumn: $$AssetsTableReferences
                                    ._phoneIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$AssetsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AssetsTable,
      Asset,
      $$AssetsTableFilterComposer,
      $$AssetsTableOrderingComposer,
      $$AssetsTableAnnotationComposer,
      $$AssetsTableCreateCompanionBuilder,
      $$AssetsTableUpdateCompanionBuilder,
      (Asset, $$AssetsTableReferences),
      Asset,
      PrefetchHooks Function({bool phoneId})
    >;
typedef $$MvnosTableCreateCompanionBuilder =
    MvnosCompanion Function({
      required String id,
      required String brand,
      required String hostNetwork,
      Value<String?> serviceUrl,
      Value<String?> apn,
      Value<bool> builtIn,
      Value<int> rowid,
    });
typedef $$MvnosTableUpdateCompanionBuilder =
    MvnosCompanion Function({
      Value<String> id,
      Value<String> brand,
      Value<String> hostNetwork,
      Value<String?> serviceUrl,
      Value<String?> apn,
      Value<bool> builtIn,
      Value<int> rowid,
    });

class $$MvnosTableFilterComposer extends Composer<_$AppDatabase, $MvnosTable> {
  $$MvnosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get hostNetwork => $composableBuilder(
    column: $table.hostNetwork,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get serviceUrl => $composableBuilder(
    column: $table.serviceUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get apn => $composableBuilder(
    column: $table.apn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get builtIn => $composableBuilder(
    column: $table.builtIn,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MvnosTableOrderingComposer
    extends Composer<_$AppDatabase, $MvnosTable> {
  $$MvnosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get hostNetwork => $composableBuilder(
    column: $table.hostNetwork,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get serviceUrl => $composableBuilder(
    column: $table.serviceUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get apn => $composableBuilder(
    column: $table.apn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get builtIn => $composableBuilder(
    column: $table.builtIn,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MvnosTableAnnotationComposer
    extends Composer<_$AppDatabase, $MvnosTable> {
  $$MvnosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get brand =>
      $composableBuilder(column: $table.brand, builder: (column) => column);

  GeneratedColumn<String> get hostNetwork => $composableBuilder(
    column: $table.hostNetwork,
    builder: (column) => column,
  );

  GeneratedColumn<String> get serviceUrl => $composableBuilder(
    column: $table.serviceUrl,
    builder: (column) => column,
  );

  GeneratedColumn<String> get apn =>
      $composableBuilder(column: $table.apn, builder: (column) => column);

  GeneratedColumn<bool> get builtIn =>
      $composableBuilder(column: $table.builtIn, builder: (column) => column);
}

class $$MvnosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MvnosTable,
          Mvno,
          $$MvnosTableFilterComposer,
          $$MvnosTableOrderingComposer,
          $$MvnosTableAnnotationComposer,
          $$MvnosTableCreateCompanionBuilder,
          $$MvnosTableUpdateCompanionBuilder,
          (Mvno, BaseReferences<_$AppDatabase, $MvnosTable, Mvno>),
          Mvno,
          PrefetchHooks Function()
        > {
  $$MvnosTableTableManager(_$AppDatabase db, $MvnosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MvnosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MvnosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MvnosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> brand = const Value.absent(),
                Value<String> hostNetwork = const Value.absent(),
                Value<String?> serviceUrl = const Value.absent(),
                Value<String?> apn = const Value.absent(),
                Value<bool> builtIn = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MvnosCompanion(
                id: id,
                brand: brand,
                hostNetwork: hostNetwork,
                serviceUrl: serviceUrl,
                apn: apn,
                builtIn: builtIn,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String brand,
                required String hostNetwork,
                Value<String?> serviceUrl = const Value.absent(),
                Value<String?> apn = const Value.absent(),
                Value<bool> builtIn = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MvnosCompanion.insert(
                id: id,
                brand: brand,
                hostNetwork: hostNetwork,
                serviceUrl: serviceUrl,
                apn: apn,
                builtIn: builtIn,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MvnosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MvnosTable,
      Mvno,
      $$MvnosTableFilterComposer,
      $$MvnosTableOrderingComposer,
      $$MvnosTableAnnotationComposer,
      $$MvnosTableCreateCompanionBuilder,
      $$MvnosTableUpdateCompanionBuilder,
      (Mvno, BaseReferences<_$AppDatabase, $MvnosTable, Mvno>),
      Mvno,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PhoneNumbersTableTableManager get phoneNumbers =>
      $$PhoneNumbersTableTableManager(_db, _db.phoneNumbers);
  $$PlansTableTableManager get plans =>
      $$PlansTableTableManager(_db, _db.plans);
  $$KeepAliveRulesTableTableManager get keepAliveRules =>
      $$KeepAliveRulesTableTableManager(_db, _db.keepAliveRules);
  $$ActivitiesTableTableManager get activities =>
      $$ActivitiesTableTableManager(_db, _db.activities);
  $$AssetsTableTableManager get assets =>
      $$AssetsTableTableManager(_db, _db.assets);
  $$MvnosTableTableManager get mvnos =>
      $$MvnosTableTableManager(_db, _db.mvnos);
}
