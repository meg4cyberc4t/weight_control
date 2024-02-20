import 'dart:io';

import 'package:flutter/material.dart';
import 'package:weight_control/src/features/settings/data/data_sources/local/settings_local_ds.dart';
import 'package:weight_control/src/features/settings/data/enums/design_mode.dart';
import 'package:weight_control/src/features/settings/data/repository/settings_repository.dart';

final class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsLocalDataSource _localDs;

  const SettingsRepositoryImpl(this._localDs);

  @override
  Future<void> setThemeMode(final ThemeMode value) async =>
      _localDs.setThemeMode(value);

  @override
  Future<ThemeMode> getThemeMode() async {
    final value = await _localDs.getThemeMode();
    return value ?? ThemeMode.system;
  }

  @override
  Future<DesignMode> getDesignMode() async {
    final value = await _localDs.getDesignMode();
    return value ??
        (Platform.isMacOS || Platform.isIOS
            ? DesignMode.cupertino
            : DesignMode.material);
  }

  @override
  Future<void> setDesignMode(final DesignMode mode) async =>
      _localDs.setDesignMode(mode);
}
