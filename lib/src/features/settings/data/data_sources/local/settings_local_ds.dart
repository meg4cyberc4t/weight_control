import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:weight_control/src/features/settings/data/codecs/theme_mode_codec.dart';

abstract interface class SettingsLocalDataSource {
  Future<ThemeMode> getThemeMode();
  Future<void> setThemeMode(final ThemeMode mode);
}

final class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  final FlutterSecureStorage _storage;

  const SettingsLocalDataSourceImpl(this._storage);

  @override
  Future<ThemeMode> getThemeMode() async {
    final value = await _storage.read(key: 'settings.theme_mode');
    if (value == null) {
      return ThemeMode.system;
    }
    return themeModeCodec.decode(value);
  }

  @override
  Future<void> setThemeMode(final ThemeMode mode) async {
    await _storage.write(
      key: 'settings.theme_mode',
      value: themeModeCodec.encode(mode),
    );
  }
}
