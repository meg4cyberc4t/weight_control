import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weight_control/src/features/initialization/data/dependencies.dart';
import 'package:weight_control/src/features/settings/logic/settings_bloc.dart';

abstract interface class SettingsController {
  void updateThemeMode(final ThemeMode mode);
  void nextThemeMode();
}

class SettingsScope extends StatefulWidget {
  final Widget child;

  static SettingsState stateOf(
    final BuildContext context, {
    final bool listen = false,
  }) =>
      (listen
              ? context.dependOnInheritedWidgetOfExactType<_SettingsInherited>()
              : context.getInheritedWidgetOfExactType<_SettingsInherited>())
          ?.state ??
      _notFoundInheritedWidget();

  static SettingsController controllerOf(
    final BuildContext context, {
    final bool listen = false,
  }) =>
      (listen
              ? context.dependOnInheritedWidgetOfExactType<_SettingsInherited>()
              : context.getInheritedWidgetOfExactType<_SettingsInherited>())
          ?.controller ??
      _notFoundInheritedWidget();

  static Never _notFoundInheritedWidget() => throw ArgumentError(
        'Out of scope, not found inherited widget '
            'a _SettingsInherited of the exact type',
        'out_of_scope',
      );

  const SettingsScope({
    required this.child,
    super.key,
  });

  @override
  State<SettingsScope> createState() => _SettingsScopeState();
}

class _SettingsScopeState extends State<SettingsScope>
    implements SettingsController {
  late final SettingsBloc _settingsBloc;

  @override
  void initState() {
    _settingsBloc = Dependencies.of(context).settingsBloc;
    super.initState();
  }

  @override
  void updateThemeMode(final ThemeMode mode) =>
      _settingsBloc.add(SettingsEvent.updateThemeMode(mode));

  @override
  void nextThemeMode() {
    final next = switch (_settingsBloc.state.themeMode) {
      ThemeMode.system => ThemeMode.light,
      ThemeMode.light => ThemeMode.dark,
      ThemeMode.dark => ThemeMode.system,
    };
    _settingsBloc.add(SettingsEvent.updateThemeMode(next));
  }

  @override
  Widget build(final BuildContext context) =>
      BlocBuilder<SettingsBloc, SettingsState>(
        bloc: _settingsBloc,
        builder: (final context, final state) => _SettingsInherited(
          state: state,
          controller: this,
          child: widget.child,
        ),
      );
}

final class _SettingsInherited extends InheritedWidget {
  final SettingsState state;
  final SettingsController controller;

  const _SettingsInherited({
    required this.state,
    required this.controller,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant final _SettingsInherited oldWidget) =>
      state != oldWidget.state || controller != oldWidget.controller;
}
