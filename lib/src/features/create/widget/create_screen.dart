import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:octopus/octopus.dart';
import 'package:weight_control/src/common/config/config.dart';
import 'package:weight_control/src/common/localizations/localizations_state_mixin.dart';
import 'package:weight_control/src/features/create/data/create_screen_state.dart';
import 'package:weight_control/src/features/create/widget/weight_difference.dart';
import 'package:weight_control/src/features/home/widget/home_screen_widget.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';
import 'package:weight_control/src/features/measures/logic/measures_bloc.dart';
import 'package:weight_control/src/features/measures/widget/measures_scope.dart';

part '_create_screen_cupertino.dart';
part '_create_screen_material.dart';

abstract interface class CreateScreenController {
  CreateScreenState get state;

  void create({
    required final Weight weight,
    required final String comment,
  });

  void switchPageToDashboard();
}

class CreateScreenWidget extends StatefulWidget {
  const CreateScreenWidget({super.key});

  @override
  State<CreateScreenWidget> createState() => _CreateScreenWidgetState();
}

class _CreateScreenWidgetState extends State<CreateScreenWidget>
    implements CreateScreenController {
  late CreateScreenState screenState;
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

  @override
  CreateScreenState get state {
    final last = measuresState.last;
    if (last == null) {
      return CreateScreenState$Available(last);
    }
    final lastTime = last.time;
    final now = DateTime.now();
    final bool isAvailable = now.year >= lastTime.year &&
        now.month >= lastTime.month &&
        now.day > lastTime.day;
    if (isAvailable) {
      return CreateScreenState$Available(last);
    } else {
      return const CreateScreenState$NotAvailable();
    }
  }

  @override
  void create({
    required final Weight weight,
    required final String comment,
  }) {
    controller.create(weight: weight, comment: comment);
    switchPageToDashboard();
  }

  @override
  void switchPageToDashboard() => context.octopus
      .setArguments((final args) => args['tab'] = HomeTabs.dashboard.name);

  @override
  Widget build(final BuildContext context) => switch (Config.platform) {
        SupportedPlatform.android =>
          _CreateScreenWidget$Material(controller: this),
        SupportedPlatform.ios =>
          _CreateScreenWidget$Cupertino(controller: this),
      };
}
