import 'package:flutter/material.dart';
import 'package:weight_control/src/common/application/cupertino_context.dart';
import 'package:weight_control/src/common/application/material_context.dart';
import 'package:weight_control/src/features/initialization/data/dependencies.dart';
import 'package:weight_control/src/features/initialization/widget/inherited_dependencies.dart';
import 'package:weight_control/src/features/measures/widget/measures_scope.dart';
import 'package:weight_control/src/features/settings/data/enums/design_mode.dart';
import 'package:weight_control/src/features/settings/widget/settings_scope.dart';

/// {@template Application}
/// The Application class represents the root widget of the application.
/// It takes in a set of dependencies and initialize the Inherited Dependencies
/// widget with these dependencies. Additionally, it sets up the
/// [MaterialContext] widget as an entry point for the material context,
/// enabling the configuration of locales, themes, and routing
/// for the application.
/// {@endtemplate}
class Application extends StatelessWidget {
  /// {@macro Dependencies}
  final Dependencies dependencies;

  /// {@macro Application}
  const Application({
    required this.dependencies,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => InheritedDependencies(
        dependencies: dependencies,
        child: SettingsScope(
          child: MeasuresScope(
            child: Builder(
              builder: (final context) => switch (
                  SettingsScope.stateOf(context, listen: true).designMode) {
                DesignMode.material => const MaterialContext(),
                DesignMode.cupertino => const CupertinoContext(),
              },
            ),
          ),
        ),
      );
}
