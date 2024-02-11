part of 'measures_bloc.dart';

@freezed
sealed class MeasuresState with _$MeasuresState {
  const factory MeasuresState.idle({
    required final List<Measure> measures,
    required final Measure? last,
  }) = _MeasuresState$Idle;
  const factory MeasuresState.processing({
    required final List<Measure> measures,
    required final Measure? last,
  }) = _MeasuresState$Processing;
  const factory MeasuresState.error({
    required final List<Measure> measures,
    required final Measure? last,
    required final Exception exception,
  }) = _MeasuresState$Error;

  const MeasuresState._();

  bool get isProcessing => maybeMap(
        processing: (final _) => true,
        orElse: () => false,
      );

  bool get isError => maybeMap(
        error: (final _) => true,
        orElse: () => false,
      );
}
