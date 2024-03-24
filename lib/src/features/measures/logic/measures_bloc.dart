import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weight_control/src/features/measures/data/models/measure.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';
import 'package:weight_control/src/features/measures/data/repository/measures_repository.dart';

part 'measures_bloc.freezed.dart';
part 'measures_event.dart';
part 'measures_state.dart';

class MeasuresBloc extends Bloc<MeasuresEvent, MeasuresState> {
  final MeasuresRepository _measuresRepository;

  MeasuresBloc(
    this._measuresRepository,
  ) : super(
          const MeasuresState.idle(
            measures: [],
            last: null,
          ),
        ) {
    on<MeasuresEvent>(
      (final event, final emit) => event.map(
        started: (final event) => _onStarted(event, emit),
        createOrEditTodays: (final event) => _onCreateOrEditTodays(event, emit),
        delete: (final event) => _onDelete(event, emit),
        deleteAll: (final event) => _onDeleteAll(event, emit),
      ),
    );
  }

  Future<void> _onStarted(
    final _MeasuresEvent$Started event,
    final Emitter<MeasuresState> emit,
  ) async {
    emit(
      MeasuresState.processing(
        measures: state.measures,
        last: state.last,
      ),
    );
    try {
      emit(
        MeasuresState.idle(
          measures: await _measuresRepository.getAllMeasure(),
          last: await _measuresRepository.getLastMeasure(),
        ),
      );
    } on Exception catch (exception) {
      emit(
        MeasuresState.error(
          measures: state.measures,
          last: state.last,
          exception: exception,
        ),
      );
    }
  }

  Future<void> _onCreateOrEditTodays(
    final _MeasuresEvent$CreateOrEditTodays event,
    final Emitter<MeasuresState> emit,
  ) async {
    emit(
      MeasuresState.processing(
        measures: state.measures,
        last: state.last,
      ),
    );
    try {
      final comment = event.comment.trim();
      final lastMeasure = await _measuresRepository.getLastMeasure();
      if (DateUtils.isSameDay(DateTime.now(), lastMeasure?.time)) {
        await _measuresRepository.editLastMeasure(
          weight: event.weight,
          comment: comment.isNotEmpty ? comment : null,
        );
      } else {
        await _measuresRepository.createMeasure(
          weight: event.weight,
          comment: comment.isNotEmpty ? comment : null,
        );
      }
      emit(
        MeasuresState.idle(
          measures: await _measuresRepository.getAllMeasure(),
          last: await _measuresRepository.getLastMeasure(),
        ),
      );
    } on Exception catch (exception) {
      emit(
        MeasuresState.error(
          measures: state.measures,
          exception: exception,
          last: state.last,
        ),
      );
    }
  }

  Future<void> _onDelete(
    final _MeasuresEvent$Delete event,
    final Emitter<MeasuresState> emit,
  ) async {
    emit(
      MeasuresState.processing(
        measures: state.measures,
        last: state.last,
      ),
    );
    try {
      await _measuresRepository.deleteMeasure(event.id);
      emit(
        MeasuresState.idle(
          measures: await _measuresRepository.getAllMeasure(),
          last: await _measuresRepository.getLastMeasure(),
        ),
      );
    } on Exception catch (exception) {
      emit(
        MeasuresState.error(
          measures: state.measures,
          exception: exception,
          last: state.last,
        ),
      );
    }
  }

  Future<void> _onDeleteAll(
    final _MeasuresEvent$DeleteAll event,
    final Emitter<MeasuresState> emit,
  ) async {
    emit(
      MeasuresState.processing(
        measures: state.measures,
        last: state.last,
      ),
    );
    try {
      await _measuresRepository.deleteAll();
      emit(
        const MeasuresState.idle(
          measures: [],
          last: null,
        ),
      );
    } on Exception catch (exception) {
      emit(
        MeasuresState.error(
          measures: state.measures,
          exception: exception,
          last: state.last,
        ),
      );
    }
  }
}
