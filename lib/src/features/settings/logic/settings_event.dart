part of 'settings_bloc.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.updateThemeMode(
    final ThemeMode themeMode,
  ) = _SettingsEvent$UpdateThemeMode;
  const factory SettingsEvent.updateDesignMode(
    final DesignMode designMode,
  ) = _SettingsEvent$UpdateDesignMode;
}
