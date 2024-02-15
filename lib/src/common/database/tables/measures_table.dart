import 'package:drift/drift.dart';
import 'package:weight_control/src/common/database/converters/weight_converter.dart';

/// Weight measurement table definition
class MeasuresTable extends Table {
  /// The identifier for this measure.
  IntColumn get id => integer().autoIncrement()();

  /// The time of this measure.
  DateTimeColumn get time => dateTime().unique()();

  /// The weight of this measure.
  IntColumn get weight => integer().map(const WeightConverter())();

  /// The comment of this measure.
  TextColumn get comment => text().nullable()();
}
