import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weight_control/src/common/application/application.dart';
import 'package:weight_control/src/common/logger/logger.dart';
import 'package:weight_control/src/features/initialization/data/dependencies.dart';
import 'package:weight_control/src/features/initialization/data/initialization_result.dart';

/// The starting point of the application
final class AppRunner {
  /// Start the initialization and in case of success run application
  Future<void> initializeAndRun() async {
    final WidgetsBinding bindings = WidgetsFlutterBinding.ensureInitialized()
      ..deferFirstFrame();

    FlutterError.onError = logger.logFlutterError;
    PlatformDispatcher.instance.onError = logger.logPlatformDispatcherError;

    final InitializationResult result = await processInitialization();

    bindings.allowFirstFrame();

    runApp(Application(dependencies: result.dependencies));
  }

  /// Initializing dependencies
  @visibleForTesting
  Future<InitializationResult> processInitialization() async {
    // if (_environmentStore.enableTrackingManager) {
    //   await _trackingManager.enableReporting();
    // }

    logger.info('Dependencies initialization has started');
    final stopwatch = Stopwatch()..start();

    final dependencies = await _$initializationDependencies();

    stopwatch.stop();
    logger.info(
      'Dependencies initialization'
      ' has ended in ${stopwatch.elapsedMilliseconds}ms',
    );

    return InitializationResult(
      dependencies: dependencies,
      msSpent: stopwatch.elapsedMilliseconds,
    );
  }

  Future<Dependencies> _$initializationDependencies() async {
    final sharedPreferences = await SharedPreferences.getInstance();

    return Dependencies(
      sharedPreferences: sharedPreferences,
    );
  }
}
