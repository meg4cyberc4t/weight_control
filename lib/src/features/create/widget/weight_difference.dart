import 'package:flutter/material.dart';
import 'package:weight_control/src/common/localizations/localizations_state_mixin.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';

typedef WeightDifferenceBuilder = Widget Function(
  BuildContext context,
  WeightDifferenceMode mode,
  String formattedString,
);

class WeightDifference extends StatelessWidget {
  const WeightDifference({
    required this.lastWeight,
    required this.weight,
    required this.builder,
    super.key,
  });

  final Weight? lastWeight;
  final Weight weight;
  final WeightDifferenceBuilder builder;

  @override
  Widget build(final BuildContext context) {
    final difference = weight - (lastWeight ?? const Weight());
    return builder(
      context,
      weight.difference(lastWeight),
      context.localizations.kilogramsNumber(difference.kilograms),
    );
  }
}
