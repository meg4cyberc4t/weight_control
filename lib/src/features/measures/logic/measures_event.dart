part of 'measures_bloc.dart';

@freezed
sealed class MeasuresEvent with _$MeasuresEvent {
  const factory MeasuresEvent.started() = _MeasuresEvent$Started;
  const factory MeasuresEvent.createOrEditTodays({
    required final Weight weight,
    required final String comment,
  }) = _MeasuresEvent$CreateOrEditTodays;
  const factory MeasuresEvent.delete({
    required final int id,
  }) = _MeasuresEvent$Delete;
  const factory MeasuresEvent.deleteAll() = _MeasuresEvent$DeleteAll;
}
