import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:weight_control/src/common/app_metadata/app_metadata.dart';
import 'package:weight_control/src/common/application/application.dart';
import 'package:weight_control/src/common/database/database.dart';
import 'package:weight_control/src/common/logger/bloc_observer.dart';
import 'package:weight_control/src/common/logger/logger.dart';
import 'package:weight_control/src/common/tracking_manager/tracking_manager.dart';
import 'package:weight_control/src/features/initialization/data/dependencies.dart';
import 'package:weight_control/src/features/initialization/data/initialization_result.dart';
import 'package:weight_control/src/features/measures/data/data_sources/measures_local_data_source.dart';
import 'package:weight_control/src/features/measures/data/repository/measures_repository_impl.dart';
import 'package:weight_control/src/features/settings/data/data_sources/local/settings_local_ds.dart';
import 'package:weight_control/src/features/settings/data/repository/settings_repository_impl.dart';
import 'package:weight_control/src/features/settings/logic/settings_bloc.dart';

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
    Bloc.observer = const LoggerBlocObserver();

    final database = AppDatabase();

    final trackingManager = DatabaseTrackingManager(database, logger);
    await trackingManager.enableReporting();

    const flutterSecureStorage = FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );

    final packageInfo = await PackageInfo.fromPlatform();
    final appMetadata = AppMetadata(
      packageInfo,
    );

    final measuresRepository = MeasuresRepositoryImpl(
      MeasuresLocalDataSource(
        database,
      ),
    );

    const settingsRepository = SettingsRepositoryImpl(
      SettingsLocalDataSourceImpl(
        flutterSecureStorage,
      ),
    );

    final SettingsBloc settingsBloc = SettingsBloc(
      SettingsState.idle(themeMode: await settingsRepository.getThemeMode()),
      settingsRepository,
    );

    return Dependencies(
      flutterSecureStorage: flutterSecureStorage,
      database: database,
      appMetadata: appMetadata,
      measuresRepository: measuresRepository,
      settingsBloc: settingsBloc,
    );
  }
}
