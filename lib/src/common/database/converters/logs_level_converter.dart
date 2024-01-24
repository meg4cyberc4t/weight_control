// stores preferences as strings
import 'package:drift/drift.dart';
import 'package:weight_control/src/common/logger/logger.dart';

/// {@template LoggerLevelConverter}
/// Converter LoggerLevel for sql drift-based database
/// {@endtemplate}
class LoggerLevelConverter extends TypeConverter<LoggerLevel, int> {
  /// {@macro LoggerLevelConverter}
  const LoggerLevelConverter();

  @override
  LoggerLevel fromSql(final int fromDb) => LoggerLevel.fromLevel(fromDb);

  @override
  int toSql(final LoggerLevel value) => value.value;
}
