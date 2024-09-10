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
  LogsTableData copyWithCompanion(LogsTableCompanion data) {
    return LogsTableData(
      id: data.id.present ? data.id.value : this.id,
      message: data.message.present ? data.message.value : this.message,
      time: data.time.present ? data.time.value : this.time,
      level: data.level.present ? data.level.value : this.level,
      stackTrace:
          data.stackTrace.present ? data.stackTrace.value : this.stackTrace,
    );
  }

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

class $MeasuresTableTable extends MeasuresTable
    with TableInfo<$MeasuresTableTable, MeasuresTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MeasuresTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<DateTime> time = GeneratedColumn<DateTime>(
      'time', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumnWithTypeConverter<Weight, int> weight =
      GeneratedColumn<int>('weight', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Weight>($MeasuresTableTable.$converterweight);
  static const VerificationMeta _commentMeta =
      const VerificationMeta('comment');
  @override
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
      'comment', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, time, weight, comment];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'measures_table';
  @override
  VerificationContext validateIntegrity(Insertable<MeasuresTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    context.handle(_weightMeta, const VerificationResult.success());
    if (data.containsKey('comment')) {
      context.handle(_commentMeta,
          comment.isAcceptableOrUnknown(data['comment']!, _commentMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MeasuresTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MeasuresTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      time: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}time'])!,
      weight: $MeasuresTableTable.$converterweight.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}weight'])!),
      comment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}comment']),
    );
  }

  @override
  $MeasuresTableTable createAlias(String alias) {
    return $MeasuresTableTable(attachedDatabase, alias);
  }

  static TypeConverter<Weight, int> $converterweight = const WeightConverter();
}

class MeasuresTableData extends DataClass
    implements Insertable<MeasuresTableData> {
  /// The identifier for this measure.
  final int id;

  /// The time of this measure.
  final DateTime time;

  /// The weight of this measure.
  final Weight weight;

  /// The comment of this measure.
  final String? comment;
  const MeasuresTableData(
      {required this.id,
      required this.time,
      required this.weight,
      this.comment});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['time'] = Variable<DateTime>(time);
    {
      map['weight'] =
          Variable<int>($MeasuresTableTable.$converterweight.toSql(weight));
    }
    if (!nullToAbsent || comment != null) {
      map['comment'] = Variable<String>(comment);
    }
    return map;
  }

  MeasuresTableCompanion toCompanion(bool nullToAbsent) {
    return MeasuresTableCompanion(
      id: Value(id),
      time: Value(time),
      weight: Value(weight),
      comment: comment == null && nullToAbsent
          ? const Value.absent()
          : Value(comment),
    );
  }

  factory MeasuresTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MeasuresTableData(
      id: serializer.fromJson<int>(json['id']),
      time: serializer.fromJson<DateTime>(json['time']),
      weight: serializer.fromJson<Weight>(json['weight']),
      comment: serializer.fromJson<String?>(json['comment']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'time': serializer.toJson<DateTime>(time),
      'weight': serializer.toJson<Weight>(weight),
      'comment': serializer.toJson<String?>(comment),
    };
  }

  MeasuresTableData copyWith(
          {int? id,
          DateTime? time,
          Weight? weight,
          Value<String?> comment = const Value.absent()}) =>
      MeasuresTableData(
        id: id ?? this.id,
        time: time ?? this.time,
        weight: weight ?? this.weight,
        comment: comment.present ? comment.value : this.comment,
      );
  MeasuresTableData copyWithCompanion(MeasuresTableCompanion data) {
    return MeasuresTableData(
      id: data.id.present ? data.id.value : this.id,
      time: data.time.present ? data.time.value : this.time,
      weight: data.weight.present ? data.weight.value : this.weight,
      comment: data.comment.present ? data.comment.value : this.comment,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MeasuresTableData(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('weight: $weight, ')
          ..write('comment: $comment')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, time, weight, comment);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MeasuresTableData &&
          other.id == this.id &&
          other.time == this.time &&
          other.weight == this.weight &&
          other.comment == this.comment);
}

class MeasuresTableCompanion extends UpdateCompanion<MeasuresTableData> {
  final Value<int> id;
  final Value<DateTime> time;
  final Value<Weight> weight;
  final Value<String?> comment;
  const MeasuresTableCompanion({
    this.id = const Value.absent(),
    this.time = const Value.absent(),
    this.weight = const Value.absent(),
    this.comment = const Value.absent(),
  });
  MeasuresTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime time,
    required Weight weight,
    this.comment = const Value.absent(),
  })  : time = Value(time),
        weight = Value(weight);
  static Insertable<MeasuresTableData> custom({
    Expression<int>? id,
    Expression<DateTime>? time,
    Expression<int>? weight,
    Expression<String>? comment,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (time != null) 'time': time,
      if (weight != null) 'weight': weight,
      if (comment != null) 'comment': comment,
    });
  }

  MeasuresTableCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? time,
      Value<Weight>? weight,
      Value<String?>? comment}) {
    return MeasuresTableCompanion(
      id: id ?? this.id,
      time: time ?? this.time,
      weight: weight ?? this.weight,
      comment: comment ?? this.comment,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    if (weight.present) {
      map['weight'] = Variable<int>(
          $MeasuresTableTable.$converterweight.toSql(weight.value));
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MeasuresTableCompanion(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('weight: $weight, ')
          ..write('comment: $comment')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $LogsTableTable logsTable = $LogsTableTable(this);
  late final $MeasuresTableTable measuresTable = $MeasuresTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [logsTable, measuresTable];
}

typedef $$LogsTableTableCreateCompanionBuilder = LogsTableCompanion Function({
  Value<int> id,
  required String message,
  Value<DateTime?> time,
  Value<LoggerLevel> level,
  Value<StackTrace?> stackTrace,
});
typedef $$LogsTableTableUpdateCompanionBuilder = LogsTableCompanion Function({
  Value<int> id,
  Value<String> message,
  Value<DateTime?> time,
  Value<LoggerLevel> level,
  Value<StackTrace?> stackTrace,
});

class $$LogsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LogsTableTable> {
  $$LogsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get message => $state.composableBuilder(
      column: $state.table.message,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get time => $state.composableBuilder(
      column: $state.table.time,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<LoggerLevel, LoggerLevel, int> get level =>
      $state.composableBuilder(
          column: $state.table.level,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<StackTrace?, StackTrace, String>
      get stackTrace => $state.composableBuilder(
          column: $state.table.stackTrace,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));
}

class $$LogsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LogsTableTable> {
  $$LogsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get message => $state.composableBuilder(
      column: $state.table.message,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get time => $state.composableBuilder(
      column: $state.table.time,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get level => $state.composableBuilder(
      column: $state.table.level,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get stackTrace => $state.composableBuilder(
      column: $state.table.stackTrace,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LogsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LogsTableTable,
    LogsTableData,
    $$LogsTableTableFilterComposer,
    $$LogsTableTableOrderingComposer,
    $$LogsTableTableCreateCompanionBuilder,
    $$LogsTableTableUpdateCompanionBuilder,
    (
      LogsTableData,
      BaseReferences<_$AppDatabase, $LogsTableTable, LogsTableData>
    ),
    LogsTableData,
    PrefetchHooks Function()> {
  $$LogsTableTableTableManager(_$AppDatabase db, $LogsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LogsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$LogsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> message = const Value.absent(),
            Value<DateTime?> time = const Value.absent(),
            Value<LoggerLevel> level = const Value.absent(),
            Value<StackTrace?> stackTrace = const Value.absent(),
          }) =>
              LogsTableCompanion(
            id: id,
            message: message,
            time: time,
            level: level,
            stackTrace: stackTrace,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String message,
            Value<DateTime?> time = const Value.absent(),
            Value<LoggerLevel> level = const Value.absent(),
            Value<StackTrace?> stackTrace = const Value.absent(),
          }) =>
              LogsTableCompanion.insert(
            id: id,
            message: message,
            time: time,
            level: level,
            stackTrace: stackTrace,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LogsTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LogsTableTable,
    LogsTableData,
    $$LogsTableTableFilterComposer,
    $$LogsTableTableOrderingComposer,
    $$LogsTableTableCreateCompanionBuilder,
    $$LogsTableTableUpdateCompanionBuilder,
    (
      LogsTableData,
      BaseReferences<_$AppDatabase, $LogsTableTable, LogsTableData>
    ),
    LogsTableData,
    PrefetchHooks Function()>;
typedef $$MeasuresTableTableCreateCompanionBuilder = MeasuresTableCompanion
    Function({
  Value<int> id,
  required DateTime time,
  required Weight weight,
  Value<String?> comment,
});
typedef $$MeasuresTableTableUpdateCompanionBuilder = MeasuresTableCompanion
    Function({
  Value<int> id,
  Value<DateTime> time,
  Value<Weight> weight,
  Value<String?> comment,
});

class $$MeasuresTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $MeasuresTableTable> {
  $$MeasuresTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get time => $state.composableBuilder(
      column: $state.table.time,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<Weight, Weight, int> get weight =>
      $state.composableBuilder(
          column: $state.table.weight,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$MeasuresTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $MeasuresTableTable> {
  $$MeasuresTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get time => $state.composableBuilder(
      column: $state.table.time,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get weight => $state.composableBuilder(
      column: $state.table.weight,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$MeasuresTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MeasuresTableTable,
    MeasuresTableData,
    $$MeasuresTableTableFilterComposer,
    $$MeasuresTableTableOrderingComposer,
    $$MeasuresTableTableCreateCompanionBuilder,
    $$MeasuresTableTableUpdateCompanionBuilder,
    (
      MeasuresTableData,
      BaseReferences<_$AppDatabase, $MeasuresTableTable, MeasuresTableData>
    ),
    MeasuresTableData,
    PrefetchHooks Function()> {
  $$MeasuresTableTableTableManager(_$AppDatabase db, $MeasuresTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$MeasuresTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$MeasuresTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<DateTime> time = const Value.absent(),
            Value<Weight> weight = const Value.absent(),
            Value<String?> comment = const Value.absent(),
          }) =>
              MeasuresTableCompanion(
            id: id,
            time: time,
            weight: weight,
            comment: comment,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required DateTime time,
            required Weight weight,
            Value<String?> comment = const Value.absent(),
          }) =>
              MeasuresTableCompanion.insert(
            id: id,
            time: time,
            weight: weight,
            comment: comment,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MeasuresTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MeasuresTableTable,
    MeasuresTableData,
    $$MeasuresTableTableFilterComposer,
    $$MeasuresTableTableOrderingComposer,
    $$MeasuresTableTableCreateCompanionBuilder,
    $$MeasuresTableTableUpdateCompanionBuilder,
    (
      MeasuresTableData,
      BaseReferences<_$AppDatabase, $MeasuresTableTable, MeasuresTableData>
    ),
    MeasuresTableData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$LogsTableTableTableManager get logsTable =>
      $$LogsTableTableTableManager(_db, _db.logsTable);
  $$MeasuresTableTableTableManager get measuresTable =>
      $$MeasuresTableTableTableManager(_db, _db.measuresTable);
}
