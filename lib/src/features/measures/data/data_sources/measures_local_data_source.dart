import 'package:drift/drift.dart';
import 'package:weight_control/src/common/database/database.dart';
import 'package:weight_control/src/common/database/tables/measures_table.dart';
import 'package:weight_control/src/features/measures/data/data_sources/measures_data_source.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';

part 'measures_local_data_source.g.dart';

@DriftAccessor(tables: [MeasuresTable])
final class MeasuresLocalDataSource extends DatabaseAccessor<AppDatabase>
    with _$MeasuresLocalDataSourceMixin
    implements MeasuresDataSource {
  MeasuresLocalDataSource(super.attachedDatabase);

  @override
  Future<List<MeasuresTableData>> getAllMeasures() async =>
      select(measuresTable).get();

  @override
  Future<MeasuresTableData?> getLastMeasure() async => (select(measuresTable)
        ..orderBy([(final t) => OrderingTerm.desc(t.time)])
        ..limit(1))
      .getSingleOrNull();

  @override
  Future<void> createMeasure({
    required final Weight weight,
    required final String? comment,
  }) =>
      into(measuresTable).insert(
        MeasuresTableCompanion.insert(
          time: DateTime.now(),
          weight: weight,
          comment: Value(comment),
        ),
      );

  @override
  Future<void> deleteMeasure(final int id) =>
      (delete(measuresTable)..where((final tbl) => tbl.id.isValue(id))).go();

  @override
  Future<void> deleteAll() => delete(measuresTable).go();

  @override
  Future<bool> editMeasure({
    required final int id,
    required final Weight weight,
    required final String? comment,
  }) async =>
      update(measuresTable).replace(
        MeasuresTableCompanion.insert(
          id: Value(id),
          time: DateTime.now(),
          weight: weight,
          comment: Value(comment),
        ),
      );
}
