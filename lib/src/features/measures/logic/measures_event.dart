part of 'measures_bloc.dart';

@freezed
sealed class MeasuresEvent with _$MeasuresEvent {
  const factory MeasuresEvent.started() = _MeasuresEvent$Started;
  const factory MeasuresEvent.create({
    required final Weight weight,
    required final String comment,
  }) = _MeasuresEvent$Create;
  const factory MeasuresEvent.delete({
    required final int id,
  }) = _MeasuresEvent$Delete;
  const factory MeasuresEvent.editLast({
    required final Weight weight,
    required final String comment,
  }) = _MeasuresEvent$EditLast;
  const factory MeasuresEvent.deleteAll() = _MeasuresEvent$DeleteAll;
}
