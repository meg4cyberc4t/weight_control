// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measures_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeasuresEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MeasuresEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MeasuresEvent()';
  }
}

/// @nodoc
class $MeasuresEventCopyWith<$Res> {
  $MeasuresEventCopyWith(MeasuresEvent _, $Res Function(MeasuresEvent) __);
}

/// Adds pattern-matching-related methods to [MeasuresEvent].
extension MeasuresEventPatterns on MeasuresEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeasuresEvent$Started value)? started,
    TResult Function(_MeasuresEvent$CreateOrEditTodays value)?
        createOrEditTodays,
    TResult Function(_MeasuresEvent$Delete value)? delete,
    TResult Function(_MeasuresEvent$DeleteAll value)? deleteAll,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MeasuresEvent$Started() when started != null:
        return started(_that);
      case _MeasuresEvent$CreateOrEditTodays() when createOrEditTodays != null:
        return createOrEditTodays(_that);
      case _MeasuresEvent$Delete() when delete != null:
        return delete(_that);
      case _MeasuresEvent$DeleteAll() when deleteAll != null:
        return deleteAll(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MeasuresEvent$Started value) started,
    required TResult Function(_MeasuresEvent$CreateOrEditTodays value)
        createOrEditTodays,
    required TResult Function(_MeasuresEvent$Delete value) delete,
    required TResult Function(_MeasuresEvent$DeleteAll value) deleteAll,
  }) {
    final _that = this;
    switch (_that) {
      case _MeasuresEvent$Started():
        return started(_that);
      case _MeasuresEvent$CreateOrEditTodays():
        return createOrEditTodays(_that);
      case _MeasuresEvent$Delete():
        return delete(_that);
      case _MeasuresEvent$DeleteAll():
        return deleteAll(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeasuresEvent$Started value)? started,
    TResult? Function(_MeasuresEvent$CreateOrEditTodays value)?
        createOrEditTodays,
    TResult? Function(_MeasuresEvent$Delete value)? delete,
    TResult? Function(_MeasuresEvent$DeleteAll value)? deleteAll,
  }) {
    final _that = this;
    switch (_that) {
      case _MeasuresEvent$Started() when started != null:
        return started(_that);
      case _MeasuresEvent$CreateOrEditTodays() when createOrEditTodays != null:
        return createOrEditTodays(_that);
      case _MeasuresEvent$Delete() when delete != null:
        return delete(_that);
      case _MeasuresEvent$DeleteAll() when deleteAll != null:
        return deleteAll(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Weight weight, String comment)? createOrEditTodays,
    TResult Function(int id)? delete,
    TResult Function()? deleteAll,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MeasuresEvent$Started() when started != null:
        return started();
      case _MeasuresEvent$CreateOrEditTodays() when createOrEditTodays != null:
        return createOrEditTodays(_that.weight, _that.comment);
      case _MeasuresEvent$Delete() when delete != null:
        return delete(_that.id);
      case _MeasuresEvent$DeleteAll() when deleteAll != null:
        return deleteAll();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Weight weight, String comment) createOrEditTodays,
    required TResult Function(int id) delete,
    required TResult Function() deleteAll,
  }) {
    final _that = this;
    switch (_that) {
      case _MeasuresEvent$Started():
        return started();
      case _MeasuresEvent$CreateOrEditTodays():
        return createOrEditTodays(_that.weight, _that.comment);
      case _MeasuresEvent$Delete():
        return delete(_that.id);
      case _MeasuresEvent$DeleteAll():
        return deleteAll();
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Weight weight, String comment)? createOrEditTodays,
    TResult? Function(int id)? delete,
    TResult? Function()? deleteAll,
  }) {
    final _that = this;
    switch (_that) {
      case _MeasuresEvent$Started() when started != null:
        return started();
      case _MeasuresEvent$CreateOrEditTodays() when createOrEditTodays != null:
        return createOrEditTodays(_that.weight, _that.comment);
      case _MeasuresEvent$Delete() when delete != null:
        return delete(_that.id);
      case _MeasuresEvent$DeleteAll() when deleteAll != null:
        return deleteAll();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MeasuresEvent$Started implements MeasuresEvent {
  const _MeasuresEvent$Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MeasuresEvent$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MeasuresEvent.started()';
  }
}

/// @nodoc

class _MeasuresEvent$CreateOrEditTodays implements MeasuresEvent {
  const _MeasuresEvent$CreateOrEditTodays(
      {required this.weight, required this.comment});

  final Weight weight;
  final String comment;

  /// Create a copy of MeasuresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MeasuresEvent$CreateOrEditTodaysCopyWith<_MeasuresEvent$CreateOrEditTodays>
      get copyWith => __$MeasuresEvent$CreateOrEditTodaysCopyWithImpl<
          _MeasuresEvent$CreateOrEditTodays>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MeasuresEvent$CreateOrEditTodays &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weight, comment);

  @override
  String toString() {
    return 'MeasuresEvent.createOrEditTodays(weight: $weight, comment: $comment)';
  }
}

/// @nodoc
abstract mixin class _$MeasuresEvent$CreateOrEditTodaysCopyWith<$Res>
    implements $MeasuresEventCopyWith<$Res> {
  factory _$MeasuresEvent$CreateOrEditTodaysCopyWith(
          _MeasuresEvent$CreateOrEditTodays value,
          $Res Function(_MeasuresEvent$CreateOrEditTodays) _then) =
      __$MeasuresEvent$CreateOrEditTodaysCopyWithImpl;
  @useResult
  $Res call({Weight weight, String comment});
}

/// @nodoc
class __$MeasuresEvent$CreateOrEditTodaysCopyWithImpl<$Res>
    implements _$MeasuresEvent$CreateOrEditTodaysCopyWith<$Res> {
  __$MeasuresEvent$CreateOrEditTodaysCopyWithImpl(this._self, this._then);

  final _MeasuresEvent$CreateOrEditTodays _self;
  final $Res Function(_MeasuresEvent$CreateOrEditTodays) _then;

  /// Create a copy of MeasuresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? weight = null,
    Object? comment = null,
  }) {
    return _then(_MeasuresEvent$CreateOrEditTodays(
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
      comment: null == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _MeasuresEvent$Delete implements MeasuresEvent {
  const _MeasuresEvent$Delete({required this.id});

  final int id;

  /// Create a copy of MeasuresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MeasuresEvent$DeleteCopyWith<_MeasuresEvent$Delete> get copyWith =>
      __$MeasuresEvent$DeleteCopyWithImpl<_MeasuresEvent$Delete>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MeasuresEvent$Delete &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'MeasuresEvent.delete(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$MeasuresEvent$DeleteCopyWith<$Res>
    implements $MeasuresEventCopyWith<$Res> {
  factory _$MeasuresEvent$DeleteCopyWith(_MeasuresEvent$Delete value,
          $Res Function(_MeasuresEvent$Delete) _then) =
      __$MeasuresEvent$DeleteCopyWithImpl;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$MeasuresEvent$DeleteCopyWithImpl<$Res>
    implements _$MeasuresEvent$DeleteCopyWith<$Res> {
  __$MeasuresEvent$DeleteCopyWithImpl(this._self, this._then);

  final _MeasuresEvent$Delete _self;
  final $Res Function(_MeasuresEvent$Delete) _then;

  /// Create a copy of MeasuresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_MeasuresEvent$Delete(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _MeasuresEvent$DeleteAll implements MeasuresEvent {
  const _MeasuresEvent$DeleteAll();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MeasuresEvent$DeleteAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MeasuresEvent.deleteAll()';
  }
}

/// @nodoc
mixin _$MeasuresState {
  List<Measure> get measures;
  Measure? get last;

  /// Create a copy of MeasuresState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeasuresStateCopyWith<MeasuresState> get copyWith =>
      _$MeasuresStateCopyWithImpl<MeasuresState>(
          this as MeasuresState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MeasuresState &&
            const DeepCollectionEquality().equals(other.measures, measures) &&
            (identical(other.last, last) || other.last == last));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(measures), last);

  @override
  String toString() {
    return 'MeasuresState(measures: $measures, last: $last)';
  }
}

/// @nodoc
abstract mixin class $MeasuresStateCopyWith<$Res> {
  factory $MeasuresStateCopyWith(
          MeasuresState value, $Res Function(MeasuresState) _then) =
      _$MeasuresStateCopyWithImpl;
  @useResult
  $Res call({List<Measure> measures, Measure? last});
}

/// @nodoc
class _$MeasuresStateCopyWithImpl<$Res>
    implements $MeasuresStateCopyWith<$Res> {
  _$MeasuresStateCopyWithImpl(this._self, this._then);

  final MeasuresState _self;
  final $Res Function(MeasuresState) _then;

  /// Create a copy of MeasuresState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measures = null,
    Object? last = freezed,
  }) {
    return _then(_self.copyWith(
      measures: null == measures
          ? _self.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<Measure>,
      last: freezed == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as Measure?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MeasuresState].
extension MeasuresStatePatterns on MeasuresState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeasuresState$Idle value)? idle,
    TResult Function(_MeasuresState$Processing value)? processing,
    TResult Function(_MeasuresState$Error value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MeasuresState$Idle() when idle != null:
        return idle(_that);
      case _MeasuresState$Processing() when processing != null:
        return processing(_that);
      case _MeasuresState$Error() when error != null:
        return error(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MeasuresState$Idle value) idle,
    required TResult Function(_MeasuresState$Processing value) processing,
    required TResult Function(_MeasuresState$Error value) error,
  }) {
    final _that = this;
    switch (_that) {
      case _MeasuresState$Idle():
        return idle(_that);
      case _MeasuresState$Processing():
        return processing(_that);
      case _MeasuresState$Error():
        return error(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeasuresState$Idle value)? idle,
    TResult? Function(_MeasuresState$Processing value)? processing,
    TResult? Function(_MeasuresState$Error value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _MeasuresState$Idle() when idle != null:
        return idle(_that);
      case _MeasuresState$Processing() when processing != null:
        return processing(_that);
      case _MeasuresState$Error() when error != null:
        return error(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Measure> measures, Measure? last)? idle,
    TResult Function(List<Measure> measures, Measure? last)? processing,
    TResult Function(
            List<Measure> measures, Measure? last, Exception exception)?
        error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MeasuresState$Idle() when idle != null:
        return idle(_that.measures, _that.last);
      case _MeasuresState$Processing() when processing != null:
        return processing(_that.measures, _that.last);
      case _MeasuresState$Error() when error != null:
        return error(_that.measures, _that.last, _that.exception);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Measure> measures, Measure? last) idle,
    required TResult Function(List<Measure> measures, Measure? last) processing,
    required TResult Function(
            List<Measure> measures, Measure? last, Exception exception)
        error,
  }) {
    final _that = this;
    switch (_that) {
      case _MeasuresState$Idle():
        return idle(_that.measures, _that.last);
      case _MeasuresState$Processing():
        return processing(_that.measures, _that.last);
      case _MeasuresState$Error():
        return error(_that.measures, _that.last, _that.exception);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Measure> measures, Measure? last)? idle,
    TResult? Function(List<Measure> measures, Measure? last)? processing,
    TResult? Function(
            List<Measure> measures, Measure? last, Exception exception)?
        error,
  }) {
    final _that = this;
    switch (_that) {
      case _MeasuresState$Idle() when idle != null:
        return idle(_that.measures, _that.last);
      case _MeasuresState$Processing() when processing != null:
        return processing(_that.measures, _that.last);
      case _MeasuresState$Error() when error != null:
        return error(_that.measures, _that.last, _that.exception);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MeasuresState$Idle extends MeasuresState {
  const _MeasuresState$Idle(
      {required final List<Measure> measures, required this.last})
      : _measures = measures,
        super._();

  final List<Measure> _measures;
  @override
  List<Measure> get measures {
    if (_measures is EqualUnmodifiableListView) return _measures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_measures);
  }

  @override
  final Measure? last;

  /// Create a copy of MeasuresState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MeasuresState$IdleCopyWith<_MeasuresState$Idle> get copyWith =>
      __$MeasuresState$IdleCopyWithImpl<_MeasuresState$Idle>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MeasuresState$Idle &&
            const DeepCollectionEquality().equals(other._measures, _measures) &&
            (identical(other.last, last) || other.last == last));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_measures), last);

  @override
  String toString() {
    return 'MeasuresState.idle(measures: $measures, last: $last)';
  }
}

/// @nodoc
abstract mixin class _$MeasuresState$IdleCopyWith<$Res>
    implements $MeasuresStateCopyWith<$Res> {
  factory _$MeasuresState$IdleCopyWith(
          _MeasuresState$Idle value, $Res Function(_MeasuresState$Idle) _then) =
      __$MeasuresState$IdleCopyWithImpl;
  @override
  @useResult
  $Res call({List<Measure> measures, Measure? last});
}

/// @nodoc
class __$MeasuresState$IdleCopyWithImpl<$Res>
    implements _$MeasuresState$IdleCopyWith<$Res> {
  __$MeasuresState$IdleCopyWithImpl(this._self, this._then);

  final _MeasuresState$Idle _self;
  final $Res Function(_MeasuresState$Idle) _then;

  /// Create a copy of MeasuresState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? measures = null,
    Object? last = freezed,
  }) {
    return _then(_MeasuresState$Idle(
      measures: null == measures
          ? _self._measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<Measure>,
      last: freezed == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as Measure?,
    ));
  }
}

/// @nodoc

class _MeasuresState$Processing extends MeasuresState {
  const _MeasuresState$Processing(
      {required final List<Measure> measures, required this.last})
      : _measures = measures,
        super._();

  final List<Measure> _measures;
  @override
  List<Measure> get measures {
    if (_measures is EqualUnmodifiableListView) return _measures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_measures);
  }

  @override
  final Measure? last;

  /// Create a copy of MeasuresState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MeasuresState$ProcessingCopyWith<_MeasuresState$Processing> get copyWith =>
      __$MeasuresState$ProcessingCopyWithImpl<_MeasuresState$Processing>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MeasuresState$Processing &&
            const DeepCollectionEquality().equals(other._measures, _measures) &&
            (identical(other.last, last) || other.last == last));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_measures), last);

  @override
  String toString() {
    return 'MeasuresState.processing(measures: $measures, last: $last)';
  }
}

/// @nodoc
abstract mixin class _$MeasuresState$ProcessingCopyWith<$Res>
    implements $MeasuresStateCopyWith<$Res> {
  factory _$MeasuresState$ProcessingCopyWith(_MeasuresState$Processing value,
          $Res Function(_MeasuresState$Processing) _then) =
      __$MeasuresState$ProcessingCopyWithImpl;
  @override
  @useResult
  $Res call({List<Measure> measures, Measure? last});
}

/// @nodoc
class __$MeasuresState$ProcessingCopyWithImpl<$Res>
    implements _$MeasuresState$ProcessingCopyWith<$Res> {
  __$MeasuresState$ProcessingCopyWithImpl(this._self, this._then);

  final _MeasuresState$Processing _self;
  final $Res Function(_MeasuresState$Processing) _then;

  /// Create a copy of MeasuresState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? measures = null,
    Object? last = freezed,
  }) {
    return _then(_MeasuresState$Processing(
      measures: null == measures
          ? _self._measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<Measure>,
      last: freezed == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as Measure?,
    ));
  }
}

/// @nodoc

class _MeasuresState$Error extends MeasuresState {
  const _MeasuresState$Error(
      {required final List<Measure> measures,
      required this.last,
      required this.exception})
      : _measures = measures,
        super._();

  final List<Measure> _measures;
  @override
  List<Measure> get measures {
    if (_measures is EqualUnmodifiableListView) return _measures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_measures);
  }

  @override
  final Measure? last;
  final Exception exception;

  /// Create a copy of MeasuresState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MeasuresState$ErrorCopyWith<_MeasuresState$Error> get copyWith =>
      __$MeasuresState$ErrorCopyWithImpl<_MeasuresState$Error>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MeasuresState$Error &&
            const DeepCollectionEquality().equals(other._measures, _measures) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_measures), last, exception);

  @override
  String toString() {
    return 'MeasuresState.error(measures: $measures, last: $last, exception: $exception)';
  }
}

/// @nodoc
abstract mixin class _$MeasuresState$ErrorCopyWith<$Res>
    implements $MeasuresStateCopyWith<$Res> {
  factory _$MeasuresState$ErrorCopyWith(_MeasuresState$Error value,
          $Res Function(_MeasuresState$Error) _then) =
      __$MeasuresState$ErrorCopyWithImpl;
  @override
  @useResult
  $Res call({List<Measure> measures, Measure? last, Exception exception});
}

/// @nodoc
class __$MeasuresState$ErrorCopyWithImpl<$Res>
    implements _$MeasuresState$ErrorCopyWith<$Res> {
  __$MeasuresState$ErrorCopyWithImpl(this._self, this._then);

  final _MeasuresState$Error _self;
  final $Res Function(_MeasuresState$Error) _then;

  /// Create a copy of MeasuresState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? measures = null,
    Object? last = freezed,
    Object? exception = null,
  }) {
    return _then(_MeasuresState$Error(
      measures: null == measures
          ? _self._measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<Measure>,
      last: freezed == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as Measure?,
      exception: null == exception
          ? _self.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

// dart format on
