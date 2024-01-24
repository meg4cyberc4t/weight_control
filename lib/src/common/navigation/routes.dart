import 'package:flutter/material.dart';
import 'package:octopus/octopus.dart';
import 'package:weight_control/src/features/home/widget/home_screen_widget.dart';

/// Application Pages
enum Routes with OctopusRoute {
  /// The initial page
  home('home');

  const Routes(this.name);

  @override
  final String name;

  @override
  Widget builder(
    final BuildContext context,
    final OctopusState state,
    final OctopusNode node,
  ) =>
      switch (this) {
        Routes.home => const HomeScreenWidget(),
      };
}
