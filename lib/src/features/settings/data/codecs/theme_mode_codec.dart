import 'dart:convert';

import 'package:flutter/material.dart';

const themeModeCodec = ThemeModeCodec();

final class ThemeModeCodec extends Codec<ThemeMode, String> {
  const ThemeModeCodec();

  @override
  Converter<String, ThemeMode> get decoder => _ThemeModeDecoder();

  @override
  Converter<ThemeMode, String> get encoder => _ThemeModeEncoder();
}

final class _ThemeModeEncoder extends Converter<ThemeMode, String> {
  @override
  String convert(final ThemeMode input) => switch (input) {
        ThemeMode.system => 'system',
        ThemeMode.light => 'light',
        ThemeMode.dark => 'dark',
      };
}

final class _ThemeModeDecoder extends Converter<String, ThemeMode> {
  @override
  ThemeMode convert(final String input) => switch (input) {
        'system' => ThemeMode.system,
        'dark' => ThemeMode.dark,
        'light' => ThemeMode.light,
        _ => ThemeMode.system,
      };
}
