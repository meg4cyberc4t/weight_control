import 'package:weight_control/src/features/measures/data/data_sources/measures_data_source.dart';
import 'package:weight_control/src/features/measures/data/models/measure.dart';
import 'package:weight_control/src/features/measures/data/repository/measures_repository.dart';

final class MeasuresRepositoryImpl implements MeasuresRepository {
  final MeasuresDataSource _localDs;

  const MeasuresRepositoryImpl(this._localDs);

  @override
  Future<List<Measure>> getAllMeasure() async {
    final measures = await _localDs.getAllMeasures();
    return measures.map(Measure.fromTableData).toList();
  }

  @override
  Future<Measure?> getLastMeasure() async {
    final measure = await _localDs.getLastMeasure();
    return measure == null ? null : Measure.fromTableData(measure);
  }

  @override
  Future<void> createMeasure({
    required final int weightInGrams,
    required final String? comment,
  }) async {
    await _localDs.createMeasure(
      weightInGrams: weightInGrams,
      comment: comment,
    );
  }

  @override
  Future<void> deleteMeasure(final int id) async {
    await _localDs.deleteMeasure(id);
  }

  @override
  Future<void> deleteAll() async {
    await _localDs.deleteAll();
  }
}
