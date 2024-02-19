import 'package:flutter/material.dart';

abstract interface class SettingsRepository {
  Future<void> setThemeMode(final ThemeMode value);
  Future<ThemeMode> getThemeMode();
}
