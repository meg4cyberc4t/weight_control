import 'package:flutter/material.dart';
import 'package:weight_control/src/features/settings/data/enums/design_mode.dart';

abstract interface class SettingsRepository {
  Future<void> setThemeMode(final ThemeMode value);
  Future<ThemeMode> getThemeMode();

  Future<DesignMode> getDesignMode();
  Future<void> setDesignMode(final DesignMode mode);
}
