import 'package:weight_control/src/features/measures/data/models/measure.dart';

sealed class CreateScreenState {
  const CreateScreenState();

  bool get canCreateMeasure;
}

final class CreateScreenState$NotAvailable extends CreateScreenState {
  const CreateScreenState$NotAvailable();

  @override
  bool get canCreateMeasure => false;
}

final class CreateScreenState$Available extends CreateScreenState {
  const CreateScreenState$Available(this.lastMeasure);

  final Measure? lastMeasure;

  @override
  bool get canCreateMeasure => true;
}
