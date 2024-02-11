import 'package:weight_control/src/common/database/database.dart';

abstract interface class MeasuresDataSource {
  Future<List<MeasuresTableData>> getAllMeasures();

  Future<MeasuresTableData?> getLastMeasure();

  Future<void> createMeasure({
    required final int weightInGrams,
    required final String? comment,
  });

  Future<void> deleteMeasure(final int id);

  Future<void> deleteAll();
}
