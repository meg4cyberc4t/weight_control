// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $LogsTableTable extends LogsTable
    with TableInfo<$LogsTableTable, LogsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LogsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _messageMeta =
      const VerificationMeta('message');
  @override
  late final GeneratedColumn<String> message = GeneratedColumn<String>(
      'message', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<DateTime> time = GeneratedColumn<DateTime>(
      'time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumnWithTypeConverter<LoggerLevel, int> level =
      GeneratedColumn<int>('level', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(200))
          .withConverter<LoggerLevel>($LogsTableTable.$converterlevel);
  static const VerificationMeta _stackTraceMeta =
      const VerificationMeta('stackTrace');
  @override
  late final GeneratedColumnWithTypeConverter<StackTrace?, String> stackTrace =
      GeneratedColumn<String>('stack_trace', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<StackTrace?>($LogsTableTable.$converterstackTracen);
  @override
  List<GeneratedColumn> get $columns => [id, message, time, level, stackTrace];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'logs_table';
  @override
  VerificationContext validateIntegrity(Insertable<LogsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('message')) {
      context.handle(_messageMeta,
          message.isAcceptableOrUnknown(data['message']!, _messageMeta));
    } else if (isInserting) {
      context.missing(_messageMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    }
    context.handle(_levelMeta, const VerificationResult.success());
    context.handle(_stackTraceMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LogsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LogsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      message: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}message'])!,
      time: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}time']),
      level: $LogsTableTable.$converterlevel.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}level'])!),
      stackTrace: $LogsTableTable.$converterstackTracen.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stack_trace'])),
    );
  }

  @override
  $LogsTableTable createAlias(String alias) {
    return $LogsTableTable(attachedDatabase, alias);
  }

  static TypeConverter<LoggerLevel, int> $converterlevel =
      const LoggerLevelConverter();
  static TypeConverter<StackTrace, String> $converterstackTrace =
      const StackTraceConverter();
  static TypeConverter<StackTrace?, String?> $converterstackTracen =
      NullAwareTypeConverter.wrap($converterstackTrace);
}

class LogsTableData extends DataClass implements Insertable<LogsTableData> {
  /// The identifier for this logs.
  final int id;

  /// The title of this logs.
  final String message;

  /// The time of this logs.
  final DateTime? time;

  /// The level of this logs
  final LoggerLevel level;

  /// The StackTrace of this logs
  final StackTrace? stackTrace;
  const LogsTableData(
      {required this.id,
      required this.message,
      this.time,
      required this.level,
      this.stackTrace});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['message'] = Variable<String>(message);
    if (!nullToAbsent || time != null) {
      map['time'] = Variable<DateTime>(time);
    }
    {
      map['level'] =
          Variable<int>($LogsTableTable.$converterlevel.toSql(level));
    }
    if (!nullToAbsent || stackTrace != null) {
      map['stack_trace'] = Variable<String>(
          $LogsTableTable.$converterstackTracen.toSql(stackTrace));
    }
    return map;
  }

  LogsTableCompanion toCompanion(bool nullToAbsent) {
    return LogsTableCompanion(
      id: Value(id),
      message: Value(message),
      time: time == null && nullToAbsent ? const Value.absent() : Value(time),
      level: Value(level),
      stackTrace: stackTrace == null && nullToAbsent
          ? const Value.absent()
          : Value(stackTrace),
    );
  }

  factory LogsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LogsTableData(
      id: serializer.fromJson<int>(json['id']),
      message: serializer.fromJson<String>(json['message']),
      time: serializer.fromJson<DateTime?>(json['time']),
      level: serializer.fromJson<LoggerLevel>(json['level']),
      stackTrace: serializer.fromJson<StackTrace?>(json['stackTrace']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'message': serializer.toJson<String>(message),
      'time': serializer.toJson<DateTime?>(time),
      'level': serializer.toJson<LoggerLevel>(level),
      'stackTrace': serializer.toJson<StackTrace?>(stackTrace),
    };
  }

  LogsTableData copyWith(
          {int? id,
          String? message,
          Value<DateTime?> time = const Value.absent(),
          LoggerLevel? level,
          Value<StackTrace?> stackTrace = const Value.absent()}) =>
      LogsTableData(
        id: id ?? this.id,
        message: message ?? this.message,
        time: time.present ? time.value : this.time,
        level: level ?? this.level,
        stackTrace: stackTrace.present ? stackTrace.value : this.stackTrace,
      );
  @override
  String toString() {
    return (StringBuffer('LogsTableData(')
          ..write('id: $id, ')
          ..write('message: $message, ')
          ..write('time: $time, ')
          ..write('level: $level, ')
          ..write('stackTrace: $stackTrace')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, message, time, level, stackTrace);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LogsTableData &&
          other.id == this.id &&
          other.message == this.message &&
          other.time == this.time &&
          other.level == this.level &&
          other.stackTrace == this.stackTrace);
}

class LogsTableCompanion extends UpdateCompanion<LogsTableData> {
  final Value<int> id;
  final Value<String> message;
  final Value<DateTime?> time;
  final Value<LoggerLevel> level;
  final Value<StackTrace?> stackTrace;
  const LogsTableCompanion({
    this.id = const Value.absent(),
    this.message = const Value.absent(),
    this.time = const Value.absent(),
    this.level = const Value.absent(),
    this.stackTrace = const Value.absent(),
  });
  LogsTableCompanion.insert({
    this.id = const Value.absent(),
    required String message,
    this.time = const Value.absent(),
    this.level = const Value.absent(),
    this.stackTrace = const Value.absent(),
  }) : message = Value(message);
  static Insertable<LogsTableData> custom({
    Expression<int>? id,
    Expression<String>? message,
    Expression<DateTime>? time,
    Expression<int>? level,
    Expression<String>? stackTrace,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (message != null) 'message': message,
      if (time != null) 'time': time,
      if (level != null) 'level': level,
      if (stackTrace != null) 'stack_trace': stackTrace,
    });
  }

  LogsTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? message,
      Value<DateTime?>? time,
      Value<LoggerLevel>? level,
      Value<StackTrace?>? stackTrace}) {
    return LogsTableCompanion(
      id: id ?? this.id,
      message: message ?? this.message,
      time: time ?? this.time,
      level: level ?? this.level,
      stackTrace: stackTrace ?? this.stackTrace,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (message.present) {
      map['message'] = Variable<String>(message.value);
    }
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    if (level.present) {
      map['level'] =
          Variable<int>($LogsTableTable.$converterlevel.toSql(level.value));
    }
    if (stackTrace.present) {
      map['stack_trace'] = Variable<String>(
          $LogsTableTable.$converterstackTracen.toSql(stackTrace.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LogsTableCompanion(')
          ..write('id: $id, ')
          ..write('message: $message, ')
          ..write('time: $time, ')
          ..write('level: $level, ')
          ..write('stackTrace: $stackTrace')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $LogsTableTable logsTable = $LogsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [logsTable];
}
