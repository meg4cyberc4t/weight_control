import 'package:flutter/material.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';

typedef WeightDifferenceBuilder = Widget Function(
  BuildContext context,
  WeightDifferenceMode mode,
  String formattedString,
);

enum WeightDifferenceMode {
  less,
  equal,
  greaterthan,
  notCalculated,
}

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

  WeightDifferenceMode getDifferenceMode() {
    final (current, last) = (weight, lastWeight);
    if (last == null) {
      return WeightDifferenceMode.notCalculated;
    } else if (current == last) {
      return WeightDifferenceMode.equal;
    }

    if (current > last) {
      return WeightDifferenceMode.greaterthan;
    } else if (current < last) {
      return WeightDifferenceMode.less;
    }
    return WeightDifferenceMode.notCalculated;
  }

  String get formattedStringKilograms {
    final difference = (weight - (lastWeight ?? const Weight())).abs();
    final formattedKilograms = difference.inKilograms;
    final formattedGrams = difference.inGrams % 1000 / 100;
    return '$formattedKilograms.${formattedGrams.toInt()}';
  }

  @override
  Widget build(final BuildContext context) {
    final mode = getDifferenceMode();

    return builder(
      context,
      mode,
      formattedStringKilograms,
    );
  }
}
