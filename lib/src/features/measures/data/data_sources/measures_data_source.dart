import 'package:weight_control/src/common/database/database.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';

abstract interface class MeasuresDataSource {
  Future<List<MeasuresTableData>> getAllMeasures();

  Future<MeasuresTableData?> getLastMeasure();

  Future<void> createMeasure({
    required final Weight weight,
    required final String? comment,
  });

  Future<void> deleteMeasure(final int id);

  Future<void> deleteAll();
}
