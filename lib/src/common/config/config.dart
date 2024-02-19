// ignore_for_file: do_not_use_environment

import 'package:flutter/foundation.dart';

/// Application configuration.
abstract final class Config {
  /// The current [EnvironmentFlavor] of a running application.
  static final EnvironmentFlavor environmentFlavor =
      EnvironmentFlavor.fromString(
    const String.fromEnvironment(
      'ENVIRONMENT',
      defaultValue: 'DEVELOPMENT',
    ),
  );

  /// The source code of a running application.
  static const String sourceCodeUrl = String.fromEnvironment(
    'SOURCE_CODE_URL',
    defaultValue: 'https://github.com/meg4cyberc4t/weight_control',
  );
}

/// A list of flavors for the app.
///
/// You can track them in launch.json
enum EnvironmentFlavor {
  /// Production flavor. Used by default.
  production,

  /// Development flavor.
  ///
  /// It is expected to be used exclusively by developers and testers.
  development,

  /// Stage flavor.
  ///
  /// Exclusively for the layout of the design.
  /// The data for the operations will be mockable.
  stage;

  /// The constructor for [EnvironmentFlavor] from String.
  /// It will take values that will match in value.
  /// Otherwise, it will take production flavor if the launch mod
  /// is a release, or the development option if the mod is not a release one.
  static EnvironmentFlavor fromString(final String value) {
    switch (value) {
      case 'PRODUCTION':
        return production;
      case 'DEVELOPMENT':
        return development;
      case 'STAGE':
        return stage;
      case _:
        return kReleaseMode ? production : development;
    }
  }

  /// Whether the environment is production.
  bool get isProduction => this == production;

  /// Whether the environment is development.
  bool get isDevelopment => this == development;

  /// Whether the environment is stage.
  bool get isStage => this == stage;
}
