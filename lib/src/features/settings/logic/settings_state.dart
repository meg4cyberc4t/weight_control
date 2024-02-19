part of 'settings_bloc.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState.idle({
    required final ThemeMode themeMode,
  }) = SettingsState$Idle;
  const factory SettingsState.processing({
    required final ThemeMode themeMode,
  }) = SettingsState$Processing;
  const factory SettingsState.error({
    required final ThemeMode themeMode,
    required final Exception exception,
  }) = SettingsState$Error;
}
