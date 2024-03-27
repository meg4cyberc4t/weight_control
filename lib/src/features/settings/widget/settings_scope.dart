import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weight_control/src/features/initialization/data/dependencies.dart';
import 'package:weight_control/src/features/settings/data/enums/design_mode.dart';
import 'package:weight_control/src/features/settings/logic/settings_bloc.dart';

abstract interface class SettingsController {
  void updateThemeMode(final ThemeMode mode);
  void nextThemeMode();
  void nextDesignMode();
}

class SettingsScope extends StatefulWidget {
  final Widget child;

  static DesignMode designModeOf(
    final BuildContext context,
  ) =>
      _scopeOf(context, aspect: _SettingsScopeAspect.design).state.designMode;

  static ThemeMode themeModeOf(
    final BuildContext context,
  ) =>
      _scopeOf(context, aspect: _SettingsScopeAspect.theme).state.themeMode;

  static SettingsController controllerOf(
    final BuildContext context, {
    final bool listen = false,
  }) =>
      _scopeOf(context, aspect: _SettingsScopeAspect.controller).controller;

  static _SettingsInherited _scopeOf(
    final BuildContext context, {
    required final _SettingsScopeAspect aspect,
  }) =>
      InheritedModel.inheritFrom<_SettingsInherited>(
        context,
        aspect: aspect,
      ) ??
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
  void nextDesignMode() {
    final mode = switch (_settingsBloc.state.designMode) {
      DesignMode.material => DesignMode.cupertino,
      DesignMode.cupertino => DesignMode.material,
    };
    _settingsBloc.add(SettingsEvent.updateDesignMode(mode));
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

final class _SettingsInherited extends InheritedModel<_SettingsScopeAspect> {
  final SettingsState state;
  final SettingsController controller;

  const _SettingsInherited({
    required this.state,
    required this.controller,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant final _SettingsInherited oldWidget) =>
      state.designMode != oldWidget.state.designMode ||
      state.themeMode != oldWidget.state.themeMode ||
      controller != oldWidget.controller;

  @override
  bool updateShouldNotifyDependent(
    covariant final _SettingsInherited oldWidget,
    final Set<_SettingsScopeAspect> dependencies,
  ) {
    bool shouldNotify = false;

    if (dependencies.contains(_SettingsScopeAspect.design)) {
      shouldNotify =
          shouldNotify || state.designMode != oldWidget.state.designMode;
    }

    if (dependencies.contains(_SettingsScopeAspect.theme)) {
      shouldNotify =
          shouldNotify || state.themeMode != oldWidget.state.themeMode;
    }

    if (dependencies.contains(_SettingsScopeAspect.controller)) {
      shouldNotify = shouldNotify || controller != oldWidget.controller;
    }

    return shouldNotify;
  }
}

enum _SettingsScopeAspect {
  controller,
  theme,
  design,
}
