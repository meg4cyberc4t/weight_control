import 'package:weight_control/src/features/measures/data/data_sources/measures_data_source.dart';
import 'package:weight_control/src/features/measures/data/models/measure.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';
import 'package:weight_control/src/features/measures/data/repository/measures_repository.dart';

final class MeasuresRepositoryImpl implements MeasuresRepository {
  final MeasuresDataSource _localDs;

  const MeasuresRepositoryImpl(this._localDs);

  @override
  Future<List<Measure>> getAllMeasure() async {
    final measures = await _localDs.getAllMeasures();
    return measures.reversed.map(Measure.fromTableData).toList();
  }

  @override
  Future<Measure?> getLastMeasure() async {
    final measure = await _localDs.getLastMeasure();
    return measure == null ? null : Measure.fromTableData(measure);
  }

  @override
  Future<void> createMeasure({
    required final Weight weight,
    required final String? comment,
  }) async {
    await _localDs.createMeasure(
      weight: weight,
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

  @override
  Future<void> editLastMeasure({
    required final Weight weight,
    required final String? comment,
  }) async {
    final lastMeasure = await _localDs.getLastMeasure();
    if (lastMeasure == null) {
      throw ArgumentError.notNull(
        'The method cannot be called if the last dimension does not exist',
      );
    }
    await _localDs.editMeasure(
      id: lastMeasure.id,
      weight: weight,
      comment: comment,
    );
  }
}
