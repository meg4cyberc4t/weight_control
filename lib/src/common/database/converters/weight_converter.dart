import 'package:drift/drift.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';

/// {@template WeightConverter}
/// Converter Weight for sql drift-based database
/// {@endtemplate}
class WeightConverter extends TypeConverter<Weight, int> {
  /// {@macro WeightConverter}
  const WeightConverter();

  @override
  Weight fromSql(final int fromDb) => Weight(grams: fromDb);

  @override
  int toSql(final Weight value) => value.inGrams;
}
