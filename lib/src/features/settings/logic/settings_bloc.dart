import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weight_control/src/features/settings/data/enums/design_mode.dart';
import 'package:weight_control/src/features/settings/data/repository/settings_repository.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsRepository _settingsRepository;

  SettingsBloc(
    super.initialState,
    this._settingsRepository,
  ) {
    on<SettingsEvent>(
      (final event, final emit) => event.map(
        updateThemeMode: (final event) => _onUpdateThemeMode(event, emit),
        updateDesignMode: (final event) => _onUpdateDesignMode(event, emit),
      ),
    );
  }

  Future<void> _onUpdateThemeMode(
    final _SettingsEvent$UpdateThemeMode event,
    final Emitter<SettingsState> emit,
  ) async {
    emit(
      SettingsState.processing(
        themeMode: state.themeMode,
        designMode: state.designMode,
      ),
    );
    try {
      await _settingsRepository.setThemeMode(event.themeMode);
      emit(
        SettingsState.idle(
          themeMode: event.themeMode,
          designMode: state.designMode,
        ),
      );
    } on Exception catch (exception) {
      emit(
        SettingsState.error(
          themeMode: state.themeMode,
          designMode: state.designMode,
          exception: exception,
        ),
      );
    }
  }

  Future<void> _onUpdateDesignMode(
    final _SettingsEvent$UpdateDesignMode event,
    final Emitter<SettingsState> emit,
  ) async {
    emit(
      SettingsState.processing(
        themeMode: state.themeMode,
        designMode: state.designMode,
      ),
    );
    try {
      await _settingsRepository.setDesignMode(event.designMode);
      emit(
        SettingsState.idle(
          themeMode: state.themeMode,
          designMode: event.designMode,
        ),
      );
    } on Exception catch (exception) {
      emit(
        SettingsState.error(
          themeMode: state.themeMode,
          designMode: state.designMode,
          exception: exception,
        ),
      );
    }
  }
}
