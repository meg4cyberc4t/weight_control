import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weight_control/src/common/localizations/localizations_state_mixin.dart';
import 'package:weight_control/src/features/dashboard/widget/measures_chart.dart';
import 'package:weight_control/src/features/measures/data/models/measure.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';
import 'package:weight_control/src/features/measures/widget/measures_scope.dart';
import 'package:weight_control/src/features/settings/data/enums/design_mode.dart';
import 'package:weight_control/src/features/settings/widget/settings_scope.dart';

part '_dashboard_screen_cupertino.dart';
part '_dashboard_screen_material.dart';

class DashboardScreenWidget extends StatefulWidget {
  const DashboardScreenWidget({super.key});

  @override
  State<DashboardScreenWidget> createState() => _DashboardScreenWidgetState();
}

class _DashboardScreenWidgetState extends State<DashboardScreenWidget> {
  @override
  Widget build(final BuildContext context) =>
      switch (SettingsScope.designModeOf(context)) {
        DesignMode.material => const _DashboardScreenWidget$Material(),
        DesignMode.cupertino => const _DashboardScreenWidget$Cupertino(),
      };
}
