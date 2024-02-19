part of 'settings_bloc.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.updateThemeMode(
    final ThemeMode themeMode,
  ) = _UpdateThemeMode;
}
