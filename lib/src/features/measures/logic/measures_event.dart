part of 'measures_bloc.dart';

@freezed
sealed class MeasuresEvent with _$MeasuresEvent {
  const factory MeasuresEvent.started() = _MeasuresEvent$Started;
  const factory MeasuresEvent.create({
    required final int weightInGrams,
    required final String? comment,
  }) = _MeasuresEvent$Create;
  const factory MeasuresEvent.delete({
    required final int id,
  }) = _MeasuresEvent$Delete;
}
