import 'package:weight_control/src/features/measures/data/models/measure.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';

abstract interface class MeasuresRepository {
  Future<List<Measure>> getAllMeasure();

  Future<Measure?> getLastMeasure();

  Future<void> createMeasure({
    required final Weight weight,
    required final String? comment,
  });

  Future<void> deleteMeasure(final int id);

  Future<void> deleteAll();
}
