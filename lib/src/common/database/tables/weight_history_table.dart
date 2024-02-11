import 'package:drift/drift.dart';

/// Weight measurement table definition
class MeasuresTable extends Table {
  /// The identifier for this measure.
  IntColumn get id => integer().autoIncrement()();

  /// The time of this measure.
  DateTimeColumn get time => dateTime().unique()();

  /// The weight of this measure in grams.
  IntColumn get weightInGrams => integer()();

  /// The comment of this measure.
  TextColumn get comment => text().nullable()();
}
