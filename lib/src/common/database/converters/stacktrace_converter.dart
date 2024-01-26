import 'package:drift/drift.dart';

/// {@template StackTraceConverter}
/// Converter StackTraceConverter for sql drift-based database
/// {@endtemplate}
class StackTraceConverter extends TypeConverter<StackTrace, String> {
  /// {@macro StackTraceConverter}
  const StackTraceConverter();

  @override
  StackTrace fromSql(final String fromDb) => StackTrace.fromString(fromDb);

  @override
  String toSql(final StackTrace value) => value.toString();
}
