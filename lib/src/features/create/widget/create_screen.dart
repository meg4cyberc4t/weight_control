import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:octopus/octopus.dart';
import 'package:weight_control/src/common/localizations/localizations_state_mixin.dart';
import 'package:weight_control/src/features/create/widget/weight_difference.dart';
import 'package:weight_control/src/features/home/widget/home_screen_widget.dart';
import 'package:weight_control/src/features/measures/data/models/measure.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';
import 'package:weight_control/src/features/measures/logic/measures_bloc.dart';
import 'package:weight_control/src/features/measures/widget/measures_scope.dart';
import 'package:weight_control/src/features/settings/data/enums/design_mode.dart';
import 'package:weight_control/src/features/settings/widget/settings_scope.dart';

part '_create_screen_cupertino.dart';
part '_create_screen_material.dart';

class CreateScreenWidget extends StatefulWidget {
  const CreateScreenWidget({super.key});

  @override
  State<CreateScreenWidget> createState() => _CreateScreenWidgetState();
}

class _CreateScreenWidgetState extends State<CreateScreenWidget> {
  late MeasuresState measuresState;
  late final MeasureController controller;

  @override
  void initState() {
    measuresState = MeasuresScope.stateOf(context);
    controller = MeasuresScope.controllerOf(context);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    measuresState = MeasuresScope.stateOf(context, listen: true);
    super.didChangeDependencies();
  }

  void switchPageToDashboard() => context.octopus
      .setArguments((final args) => args['tab'] = HomeTabs.dashboard.name);

  void createOrEditTodays({
    required final Weight weight,
    required final String comment,
  }) {
    controller.createOrEditTodays(weight: weight, comment: comment);
    switchPageToDashboard();
  }

  @override
  Widget build(final BuildContext context) {
    final lastMeasure = MeasuresScope.stateOf(context, listen: true).last;
    final bool isEditing =
        DateUtils.isSameDay(lastMeasure?.time, DateTime.now());
    return switch (SettingsScope.designModeOf(context)) {
      DesignMode.material => _CreateScreenWidget$Material(
          isEditing: isEditing,
          lastMeasure: lastMeasure,
          onAction: createOrEditTodays,
        ),
      DesignMode.cupertino => _CreateScreenWidget$Cupertino(
          isEditing: isEditing,
          lastMeasure: lastMeasure,
          onAction: createOrEditTodays,
        ),
    };
  }
}
