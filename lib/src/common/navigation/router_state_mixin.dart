import 'package:flutter/widgets.dart';
import 'package:octopus/octopus.dart';
import 'package:weight_control/src/common/application/material_context.dart';
import 'package:weight_control/src/common/logger/logger.dart';
import 'package:weight_control/src/common/navigation/routes.dart';

/// The mixing RouterStateMixin provides the functionality for
/// managing the navigation router within a State<MaterialContext> instance.
mixin RouterStateMixin<T extends StatefulWidget> on State<MaterialContext> {
  /// The main class of the navigaiton package.
  late final Octopus router;

  @override
  void initState() {
    router = Octopus(
      routes: Routes.values,
      defaultRoute: Routes.home,
      onError: (final error, final stackTrace) => logger.error(
        'Exception in navigation',
        error: error,
        stackTrace: stackTrace,
      ),
    );
    super.initState();
  }
}
