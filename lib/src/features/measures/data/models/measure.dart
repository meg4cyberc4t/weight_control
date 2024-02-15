import 'package:weight_control/src/common/database/database.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';

class Measure {
  final int id;
  final DateTime time;
  final Weight weight;
  final String? comment;

  const Measure({
    required this.id,
    required this.time,
    required this.weight,
    required this.comment,
  });

  factory Measure.fromTableData(final MeasuresTableData tableData) => Measure(
        id: tableData.id,
        time: tableData.time,
        weight: tableData.weight,
        comment: tableData.comment,
      );

  @override
  String toString() =>
      '''Measure{id: $id, time: $time, weight: $weight, comment: $comment}''';
}
