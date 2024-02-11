import 'package:weight_control/src/features/measures/data/models/measure.dart';

abstract interface class MeasuresRepository {
  Future<List<Measure>> getAllMeasure();

  Future<Measure?> getLastMeasure();

  Future<void> createMeasure({
    required final int weightInGrams,
    required final String? comment,
  });

  Future<void> deleteMeasure(final int id);

  Future<void> deleteAll();
}
