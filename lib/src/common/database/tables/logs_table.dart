import 'package:drift/drift.dart';
import 'package:weight_control/src/common/database/converters/logs_level_converter.dart';

/// Logs table definition
class LogsTable extends Table {
  /// The identifier for this logs.
  IntColumn get id => integer().autoIncrement()();

  /// The title of this logs.
  TextColumn get message => text()();

  /// The time of this logs.
  DateTimeColumn get time => dateTime().nullable()();

  /// The level of this logs
  IntColumn get level => integer()
      .map(const LoggerLevelConverter())
      .withDefault(const Constant(200))();
}
