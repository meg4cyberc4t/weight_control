import 'package:weight_control/src/common/database/database.dart';

class Measure {
  final int id;
  final DateTime time;
  final int weightInGrams;
  final String? comment;

  const Measure({
    required this.id,
    required this.time,
    required this.weightInGrams,
    required this.comment,
  });

  factory Measure.fromTableData(final MeasuresTableData tableData) => Measure(
        id: tableData.id,
        time: tableData.time,
        weightInGrams: tableData.weightInGrams,
        comment: tableData.comment,
      );

  @override
  String toString() =>
      '''Measure{id: $id, time: $time, weightInGrams: $weightInGrams, comment: $comment}''';
}
