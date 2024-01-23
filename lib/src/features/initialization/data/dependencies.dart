import 'package:flutter/widgets.dart' show BuildContext;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weight_control/src/features/initialization/widget/inherited_dependencies.dart';

/// {@template Dependencies}
/// Dependencies of application
/// {@endtemplate}
final class Dependencies {
  /// {@macro Dependencies}
  const Dependencies({
    required this.sharedPreferences,
  });

  /// The state from the closest instance of this class.
  factory Dependencies.of(final BuildContext context) =>
      InheritedDependencies.of(context);

  /// Shared preferences
  final SharedPreferences sharedPreferences;
}
