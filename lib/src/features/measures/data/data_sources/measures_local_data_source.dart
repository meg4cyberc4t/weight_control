import 'package:drift/drift.dart';
import 'package:weight_control/src/common/database/database.dart';
import 'package:weight_control/src/common/database/tables/weight_history_table.dart';
import 'package:weight_control/src/features/measures/data/data_sources/measures_data_source.dart';

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
        ..orderBy([(final t) => OrderingTerm.asc(t.time)])
        ..limit(1))
      .getSingleOrNull();

  @override
  Future<void> createMeasure({
    required final int weightInGrams,
    required final String? comment,
  }) =>
      into(measuresTable).insert(
        MeasuresTableCompanion.insert(
          time: DateTime.now(),
          weightInGrams: weightInGrams,
        ),
      );

  @override
  Future<void> deleteMeasure(final int id) =>
      (delete(measuresTable)..where((final tbl) => tbl.id.isValue(id))).go();

  @override
  Future<void> deleteAll() => delete(measuresTable).go();
}
