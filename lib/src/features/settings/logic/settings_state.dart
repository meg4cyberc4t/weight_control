part of 'settings_bloc.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState.idle({
    required final ThemeMode themeMode,
    required final DesignMode designMode,
  }) = SettingsState$Idle;
  const factory SettingsState.processing({
    required final ThemeMode themeMode,
    required final DesignMode designMode,
  }) = SettingsState$Processing;
  const factory SettingsState.error({
    required final ThemeMode themeMode,
    required final DesignMode designMode,
    required final Exception exception,
  }) = SettingsState$Error;
}
