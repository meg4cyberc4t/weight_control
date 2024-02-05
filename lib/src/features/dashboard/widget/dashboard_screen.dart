import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weight_control/src/common/config/config.dart';
import 'package:weight_control/src/common/localizations/localizations_state_mixin.dart';
import 'package:weight_control/src/features/dashboard/widget/measures_chart.dart';
import 'package:weight_control/src/features/measures/data/models/measure.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';
import 'package:weight_control/src/features/measures/widget/measures_scope.dart';

part '_dashboard_screen_cupertino.dart';
part '_dashboard_screen_material.dart';

class DashboardScreenWidget extends StatefulWidget {
  const DashboardScreenWidget({super.key});

  @override
  State<DashboardScreenWidget> createState() => _DashboardScreenWidgetState();
}

class _DashboardScreenWidgetState extends State<DashboardScreenWidget> {
  @override
  Widget build(final BuildContext context) => switch (Config.platform) {
        SupportedPlatform.android => const _DashboardScreenWidget$Material(),
        SupportedPlatform.ios => const _DashboardScreenWidget$Cupertino(),
      };
}
