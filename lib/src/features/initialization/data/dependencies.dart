import 'package:flutter/widgets.dart' show BuildContext;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:weight_control/src/common/app_metadata/app_metadata.dart';
import 'package:weight_control/src/common/database/database.dart';
import 'package:weight_control/src/features/initialization/widget/inherited_dependencies.dart';
import 'package:weight_control/src/features/measures/data/repository/measures_repository.dart';
import 'package:weight_control/src/features/settings/logic/settings_bloc.dart';

/// {@template Dependencies}
/// Dependencies of application
/// {@endtemplate}
final class Dependencies {
  /// {@macro Dependencies}
  const Dependencies({
    required this.flutterSecureStorage,
    required this.database,
    required this.appMetadata,
    required this.measuresRepository,
    required this.settingsBloc,
  });

  /// The state from the closest instance of this class.
  factory Dependencies.of(final BuildContext context) =>
      InheritedDependencies.of(context);

  /// Shared preferences
  final FlutterSecureStorage flutterSecureStorage;

  /// {@macro AppDatabase}
  final AppDatabase database;

  /// {@macro AppMetadata}
  final AppMetadata appMetadata;

  /// {@macro MeasuresRepository}
  final MeasuresRepository measuresRepository;

  final SettingsBloc settingsBloc;
}
