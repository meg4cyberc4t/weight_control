import 'package:flutter/widgets.dart' show BuildContext;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:weight_control/src/common/database/database.dart';
import 'package:weight_control/src/features/initialization/widget/inherited_dependencies.dart';

/// {@template Dependencies}
/// Dependencies of application
/// {@endtemplate}
final class Dependencies {
  /// {@macro Dependencies}
  const Dependencies({
    required this.flutterSecureStorage,
    required this.database,
  });

  /// The state from the closest instance of this class.
  factory Dependencies.of(final BuildContext context) =>
      InheritedDependencies.of(context);

  /// Shared preferences
  final FlutterSecureStorage flutterSecureStorage;

  /// SQL drift-based Database
  final AppDatabase database;
}
