// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measures_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MeasuresEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Weight weight, String comment) create,
    required TResult Function(int id) delete,
    required TResult Function() deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Weight weight, String comment)? create,
    TResult? Function(int id)? delete,
    TResult? Function()? deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Weight weight, String comment)? create,
    TResult Function(int id)? delete,
    TResult Function()? deleteAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MeasuresEvent$Started value) started,
    required TResult Function(_MeasuresEvent$Create value) create,
    required TResult Function(_MeasuresEvent$Delete value) delete,
    required TResult Function(_MeasuresEvent$DeleteAll value) deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeasuresEvent$Started value)? started,
    TResult? Function(_MeasuresEvent$Create value)? create,
    TResult? Function(_MeasuresEvent$Delete value)? delete,
    TResult? Function(_MeasuresEvent$DeleteAll value)? deleteAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeasuresEvent$Started value)? started,
    TResult Function(_MeasuresEvent$Create value)? create,
    TResult Function(_MeasuresEvent$Delete value)? delete,
    TResult Function(_MeasuresEvent$DeleteAll value)? deleteAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasuresEventCopyWith<$Res> {
  factory $MeasuresEventCopyWith(
          MeasuresEvent value, $Res Function(MeasuresEvent) then) =
      _$MeasuresEventCopyWithImpl<$Res, MeasuresEvent>;
}

/// @nodoc
class _$MeasuresEventCopyWithImpl<$Res, $Val extends MeasuresEvent>
    implements $MeasuresEventCopyWith<$Res> {
  _$MeasuresEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MeasuresEvent$StartedImplCopyWith<$Res> {
  factory _$$MeasuresEvent$StartedImplCopyWith(
          _$MeasuresEvent$StartedImpl value,
          $Res Function(_$MeasuresEvent$StartedImpl) then) =
      __$$MeasuresEvent$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MeasuresEvent$StartedImplCopyWithImpl<$Res>
    extends _$MeasuresEventCopyWithImpl<$Res, _$MeasuresEvent$StartedImpl>
    implements _$$MeasuresEvent$StartedImplCopyWith<$Res> {
  __$$MeasuresEvent$StartedImplCopyWithImpl(_$MeasuresEvent$StartedImpl _value,
      $Res Function(_$MeasuresEvent$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MeasuresEvent$StartedImpl implements _MeasuresEvent$Started {
  const _$MeasuresEvent$StartedImpl();

  @override
  String toString() {
    return 'MeasuresEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasuresEvent$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Weight weight, String comment) create,
    required TResult Function(int id) delete,
    required TResult Function() deleteAll,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Weight weight, String comment)? create,
    TResult? Function(int id)? delete,
    TResult? Function()? deleteAll,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Weight weight, String comment)? create,
    TResult Function(int id)? delete,
    TResult Function()? deleteAll,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MeasuresEvent$Started value) started,
    required TResult Function(_MeasuresEvent$Create value) create,
    required TResult Function(_MeasuresEvent$Delete value) delete,
    required TResult Function(_MeasuresEvent$DeleteAll value) deleteAll,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeasuresEvent$Started value)? started,
    TResult? Function(_MeasuresEvent$Create value)? create,
    TResult? Function(_MeasuresEvent$Delete value)? delete,
    TResult? Function(_MeasuresEvent$DeleteAll value)? deleteAll,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeasuresEvent$Started value)? started,
    TResult Function(_MeasuresEvent$Create value)? create,
    TResult Function(_MeasuresEvent$Delete value)? delete,
    TResult Function(_MeasuresEvent$DeleteAll value)? deleteAll,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _MeasuresEvent$Started implements MeasuresEvent {
  const factory _MeasuresEvent$Started() = _$MeasuresEvent$StartedImpl;
}

/// @nodoc
abstract class _$$MeasuresEvent$CreateImplCopyWith<$Res> {
  factory _$$MeasuresEvent$CreateImplCopyWith(_$MeasuresEvent$CreateImpl value,
          $Res Function(_$MeasuresEvent$CreateImpl) then) =
      __$$MeasuresEvent$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Weight weight, String comment});
}

/// @nodoc
class __$$MeasuresEvent$CreateImplCopyWithImpl<$Res>
    extends _$MeasuresEventCopyWithImpl<$Res, _$MeasuresEvent$CreateImpl>
    implements _$$MeasuresEvent$CreateImplCopyWith<$Res> {
  __$$MeasuresEvent$CreateImplCopyWithImpl(_$MeasuresEvent$CreateImpl _value,
      $Res Function(_$MeasuresEvent$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? comment = null,
  }) {
    return _then(_$MeasuresEvent$CreateImpl(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MeasuresEvent$CreateImpl implements _MeasuresEvent$Create {
  const _$MeasuresEvent$CreateImpl(
      {required this.weight, required this.comment});

  @override
  final Weight weight;
  @override
  final String comment;

  @override
  String toString() {
    return 'MeasuresEvent.create(weight: $weight, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasuresEvent$CreateImpl &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weight, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasuresEvent$CreateImplCopyWith<_$MeasuresEvent$CreateImpl>
      get copyWith =>
          __$$MeasuresEvent$CreateImplCopyWithImpl<_$MeasuresEvent$CreateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Weight weight, String comment) create,
    required TResult Function(int id) delete,
    required TResult Function() deleteAll,
  }) {
    return create(weight, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Weight weight, String comment)? create,
    TResult? Function(int id)? delete,
    TResult? Function()? deleteAll,
  }) {
    return create?.call(weight, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Weight weight, String comment)? create,
    TResult Function(int id)? delete,
    TResult Function()? deleteAll,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(weight, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MeasuresEvent$Started value) started,
    required TResult Function(_MeasuresEvent$Create value) create,
    required TResult Function(_MeasuresEvent$Delete value) delete,
    required TResult Function(_MeasuresEvent$DeleteAll value) deleteAll,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeasuresEvent$Started value)? started,
    TResult? Function(_MeasuresEvent$Create value)? create,
    TResult? Function(_MeasuresEvent$Delete value)? delete,
    TResult? Function(_MeasuresEvent$DeleteAll value)? deleteAll,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeasuresEvent$Started value)? started,
    TResult Function(_MeasuresEvent$Create value)? create,
    TResult Function(_MeasuresEvent$Delete value)? delete,
    TResult Function(_MeasuresEvent$DeleteAll value)? deleteAll,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _MeasuresEvent$Create implements MeasuresEvent {
  const factory _MeasuresEvent$Create(
      {required final Weight weight,
      required final String comment}) = _$MeasuresEvent$CreateImpl;

  Weight get weight;
  String get comment;
  @JsonKey(ignore: true)
  _$$MeasuresEvent$CreateImplCopyWith<_$MeasuresEvent$CreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeasuresEvent$DeleteImplCopyWith<$Res> {
  factory _$$MeasuresEvent$DeleteImplCopyWith(_$MeasuresEvent$DeleteImpl value,
          $Res Function(_$MeasuresEvent$DeleteImpl) then) =
      __$$MeasuresEvent$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$MeasuresEvent$DeleteImplCopyWithImpl<$Res>
    extends _$MeasuresEventCopyWithImpl<$Res, _$MeasuresEvent$DeleteImpl>
    implements _$$MeasuresEvent$DeleteImplCopyWith<$Res> {
  __$$MeasuresEvent$DeleteImplCopyWithImpl(_$MeasuresEvent$DeleteImpl _value,
      $Res Function(_$MeasuresEvent$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$MeasuresEvent$DeleteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MeasuresEvent$DeleteImpl implements _MeasuresEvent$Delete {
  const _$MeasuresEvent$DeleteImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'MeasuresEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasuresEvent$DeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasuresEvent$DeleteImplCopyWith<_$MeasuresEvent$DeleteImpl>
      get copyWith =>
          __$$MeasuresEvent$DeleteImplCopyWithImpl<_$MeasuresEvent$DeleteImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Weight weight, String comment) create,
    required TResult Function(int id) delete,
    required TResult Function() deleteAll,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Weight weight, String comment)? create,
    TResult? Function(int id)? delete,
    TResult? Function()? deleteAll,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Weight weight, String comment)? create,
    TResult Function(int id)? delete,
    TResult Function()? deleteAll,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MeasuresEvent$Started value) started,
    required TResult Function(_MeasuresEvent$Create value) create,
    required TResult Function(_MeasuresEvent$Delete value) delete,
    required TResult Function(_MeasuresEvent$DeleteAll value) deleteAll,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeasuresEvent$Started value)? started,
    TResult? Function(_MeasuresEvent$Create value)? create,
    TResult? Function(_MeasuresEvent$Delete value)? delete,
    TResult? Function(_MeasuresEvent$DeleteAll value)? deleteAll,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeasuresEvent$Started value)? started,
    TResult Function(_MeasuresEvent$Create value)? create,
    TResult Function(_MeasuresEvent$Delete value)? delete,
    TResult Function(_MeasuresEvent$DeleteAll value)? deleteAll,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _MeasuresEvent$Delete implements MeasuresEvent {
  const factory _MeasuresEvent$Delete({required final int id}) =
      _$MeasuresEvent$DeleteImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$MeasuresEvent$DeleteImplCopyWith<_$MeasuresEvent$DeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeasuresEvent$DeleteAllImplCopyWith<$Res> {
  factory _$$MeasuresEvent$DeleteAllImplCopyWith(
          _$MeasuresEvent$DeleteAllImpl value,
          $Res Function(_$MeasuresEvent$DeleteAllImpl) then) =
      __$$MeasuresEvent$DeleteAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MeasuresEvent$DeleteAllImplCopyWithImpl<$Res>
    extends _$MeasuresEventCopyWithImpl<$Res, _$MeasuresEvent$DeleteAllImpl>
    implements _$$MeasuresEvent$DeleteAllImplCopyWith<$Res> {
  __$$MeasuresEvent$DeleteAllImplCopyWithImpl(
      _$MeasuresEvent$DeleteAllImpl _value,
      $Res Function(_$MeasuresEvent$DeleteAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MeasuresEvent$DeleteAllImpl implements _MeasuresEvent$DeleteAll {
  const _$MeasuresEvent$DeleteAllImpl();

  @override
  String toString() {
    return 'MeasuresEvent.deleteAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasuresEvent$DeleteAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Weight weight, String comment) create,
    required TResult Function(int id) delete,
    required TResult Function() deleteAll,
  }) {
    return deleteAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Weight weight, String comment)? create,
    TResult? Function(int id)? delete,
    TResult? Function()? deleteAll,
  }) {
    return deleteAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Weight weight, String comment)? create,
    TResult Function(int id)? delete,
    TResult Function()? deleteAll,
    required TResult orElse(),
  }) {
    if (deleteAll != null) {
      return deleteAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MeasuresEvent$Started value) started,
    required TResult Function(_MeasuresEvent$Create value) create,
    required TResult Function(_MeasuresEvent$Delete value) delete,
    required TResult Function(_MeasuresEvent$DeleteAll value) deleteAll,
  }) {
    return deleteAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeasuresEvent$Started value)? started,
    TResult? Function(_MeasuresEvent$Create value)? create,
    TResult? Function(_MeasuresEvent$Delete value)? delete,
    TResult? Function(_MeasuresEvent$DeleteAll value)? deleteAll,
  }) {
    return deleteAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeasuresEvent$Started value)? started,
    TResult Function(_MeasuresEvent$Create value)? create,
    TResult Function(_MeasuresEvent$Delete value)? delete,
    TResult Function(_MeasuresEvent$DeleteAll value)? deleteAll,
    required TResult orElse(),
  }) {
    if (deleteAll != null) {
      return deleteAll(this);
    }
    return orElse();
  }
}

abstract class _MeasuresEvent$DeleteAll implements MeasuresEvent {
  const factory _MeasuresEvent$DeleteAll() = _$MeasuresEvent$DeleteAllImpl;
}

/// @nodoc
mixin _$MeasuresState {
  List<Measure> get measures => throw _privateConstructorUsedError;
  Measure? get last => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Measure> measures, Measure? last) idle,
    required TResult Function(List<Measure> measures, Measure? last) processing,
    required TResult Function(
            List<Measure> measures, Measure? last, Exception exception)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Measure> measures, Measure? last)? idle,
    TResult? Function(List<Measure> measures, Measure? last)? processing,
    TResult? Function(
            List<Measure> measures, Measure? last, Exception exception)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Measure> measures, Measure? last)? idle,
    TResult Function(List<Measure> measures, Measure? last)? processing,
    TResult Function(
            List<Measure> measures, Measure? last, Exception exception)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MeasuresState$Idle value) idle,
    required TResult Function(_MeasuresState$Processing value) processing,
    required TResult Function(_MeasuresState$Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeasuresState$Idle value)? idle,
    TResult? Function(_MeasuresState$Processing value)? processing,
    TResult? Function(_MeasuresState$Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeasuresState$Idle value)? idle,
    TResult Function(_MeasuresState$Processing value)? processing,
    TResult Function(_MeasuresState$Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeasuresStateCopyWith<MeasuresState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasuresStateCopyWith<$Res> {
  factory $MeasuresStateCopyWith(
          MeasuresState value, $Res Function(MeasuresState) then) =
      _$MeasuresStateCopyWithImpl<$Res, MeasuresState>;
  @useResult
  $Res call({List<Measure> measures, Measure? last});
}

/// @nodoc
class _$MeasuresStateCopyWithImpl<$Res, $Val extends MeasuresState>
    implements $MeasuresStateCopyWith<$Res> {
  _$MeasuresStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measures = null,
    Object? last = freezed,
  }) {
    return _then(_value.copyWith(
      measures: null == measures
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<Measure>,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as Measure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeasuresState$IdleImplCopyWith<$Res>
    implements $MeasuresStateCopyWith<$Res> {
  factory _$$MeasuresState$IdleImplCopyWith(_$MeasuresState$IdleImpl value,
          $Res Function(_$MeasuresState$IdleImpl) then) =
      __$$MeasuresState$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Measure> measures, Measure? last});
}

/// @nodoc
class __$$MeasuresState$IdleImplCopyWithImpl<$Res>
    extends _$MeasuresStateCopyWithImpl<$Res, _$MeasuresState$IdleImpl>
    implements _$$MeasuresState$IdleImplCopyWith<$Res> {
  __$$MeasuresState$IdleImplCopyWithImpl(_$MeasuresState$IdleImpl _value,
      $Res Function(_$MeasuresState$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measures = null,
    Object? last = freezed,
  }) {
    return _then(_$MeasuresState$IdleImpl(
      measures: null == measures
          ? _value._measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<Measure>,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as Measure?,
    ));
  }
}

/// @nodoc

class _$MeasuresState$IdleImpl extends _MeasuresState$Idle {
  const _$MeasuresState$IdleImpl(
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

  @override
  String toString() {
    return 'MeasuresState.idle(measures: $measures, last: $last)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasuresState$IdleImpl &&
            const DeepCollectionEquality().equals(other._measures, _measures) &&
            (identical(other.last, last) || other.last == last));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_measures), last);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasuresState$IdleImplCopyWith<_$MeasuresState$IdleImpl> get copyWith =>
      __$$MeasuresState$IdleImplCopyWithImpl<_$MeasuresState$IdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Measure> measures, Measure? last) idle,
    required TResult Function(List<Measure> measures, Measure? last) processing,
    required TResult Function(
            List<Measure> measures, Measure? last, Exception exception)
        error,
  }) {
    return idle(measures, last);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Measure> measures, Measure? last)? idle,
    TResult? Function(List<Measure> measures, Measure? last)? processing,
    TResult? Function(
            List<Measure> measures, Measure? last, Exception exception)?
        error,
  }) {
    return idle?.call(measures, last);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Measure> measures, Measure? last)? idle,
    TResult Function(List<Measure> measures, Measure? last)? processing,
    TResult Function(
            List<Measure> measures, Measure? last, Exception exception)?
        error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(measures, last);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MeasuresState$Idle value) idle,
    required TResult Function(_MeasuresState$Processing value) processing,
    required TResult Function(_MeasuresState$Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeasuresState$Idle value)? idle,
    TResult? Function(_MeasuresState$Processing value)? processing,
    TResult? Function(_MeasuresState$Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeasuresState$Idle value)? idle,
    TResult Function(_MeasuresState$Processing value)? processing,
    TResult Function(_MeasuresState$Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _MeasuresState$Idle extends MeasuresState {
  const factory _MeasuresState$Idle(
      {required final List<Measure> measures,
      required final Measure? last}) = _$MeasuresState$IdleImpl;
  const _MeasuresState$Idle._() : super._();

  @override
  List<Measure> get measures;
  @override
  Measure? get last;
  @override
  @JsonKey(ignore: true)
  _$$MeasuresState$IdleImplCopyWith<_$MeasuresState$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeasuresState$ProcessingImplCopyWith<$Res>
    implements $MeasuresStateCopyWith<$Res> {
  factory _$$MeasuresState$ProcessingImplCopyWith(
          _$MeasuresState$ProcessingImpl value,
          $Res Function(_$MeasuresState$ProcessingImpl) then) =
      __$$MeasuresState$ProcessingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Measure> measures, Measure? last});
}

/// @nodoc
class __$$MeasuresState$ProcessingImplCopyWithImpl<$Res>
    extends _$MeasuresStateCopyWithImpl<$Res, _$MeasuresState$ProcessingImpl>
    implements _$$MeasuresState$ProcessingImplCopyWith<$Res> {
  __$$MeasuresState$ProcessingImplCopyWithImpl(
      _$MeasuresState$ProcessingImpl _value,
      $Res Function(_$MeasuresState$ProcessingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measures = null,
    Object? last = freezed,
  }) {
    return _then(_$MeasuresState$ProcessingImpl(
      measures: null == measures
          ? _value._measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<Measure>,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as Measure?,
    ));
  }
}

/// @nodoc

class _$MeasuresState$ProcessingImpl extends _MeasuresState$Processing {
  const _$MeasuresState$ProcessingImpl(
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

  @override
  String toString() {
    return 'MeasuresState.processing(measures: $measures, last: $last)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasuresState$ProcessingImpl &&
            const DeepCollectionEquality().equals(other._measures, _measures) &&
            (identical(other.last, last) || other.last == last));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_measures), last);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasuresState$ProcessingImplCopyWith<_$MeasuresState$ProcessingImpl>
      get copyWith => __$$MeasuresState$ProcessingImplCopyWithImpl<
          _$MeasuresState$ProcessingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Measure> measures, Measure? last) idle,
    required TResult Function(List<Measure> measures, Measure? last) processing,
    required TResult Function(
            List<Measure> measures, Measure? last, Exception exception)
        error,
  }) {
    return processing(measures, last);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Measure> measures, Measure? last)? idle,
    TResult? Function(List<Measure> measures, Measure? last)? processing,
    TResult? Function(
            List<Measure> measures, Measure? last, Exception exception)?
        error,
  }) {
    return processing?.call(measures, last);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Measure> measures, Measure? last)? idle,
    TResult Function(List<Measure> measures, Measure? last)? processing,
    TResult Function(
            List<Measure> measures, Measure? last, Exception exception)?
        error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(measures, last);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MeasuresState$Idle value) idle,
    required TResult Function(_MeasuresState$Processing value) processing,
    required TResult Function(_MeasuresState$Error value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeasuresState$Idle value)? idle,
    TResult? Function(_MeasuresState$Processing value)? processing,
    TResult? Function(_MeasuresState$Error value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeasuresState$Idle value)? idle,
    TResult Function(_MeasuresState$Processing value)? processing,
    TResult Function(_MeasuresState$Error value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _MeasuresState$Processing extends MeasuresState {
  const factory _MeasuresState$Processing(
      {required final List<Measure> measures,
      required final Measure? last}) = _$MeasuresState$ProcessingImpl;
  const _MeasuresState$Processing._() : super._();

  @override
  List<Measure> get measures;
  @override
  Measure? get last;
  @override
  @JsonKey(ignore: true)
  _$$MeasuresState$ProcessingImplCopyWith<_$MeasuresState$ProcessingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeasuresState$ErrorImplCopyWith<$Res>
    implements $MeasuresStateCopyWith<$Res> {
  factory _$$MeasuresState$ErrorImplCopyWith(_$MeasuresState$ErrorImpl value,
          $Res Function(_$MeasuresState$ErrorImpl) then) =
      __$$MeasuresState$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Measure> measures, Measure? last, Exception exception});
}

/// @nodoc
class __$$MeasuresState$ErrorImplCopyWithImpl<$Res>
    extends _$MeasuresStateCopyWithImpl<$Res, _$MeasuresState$ErrorImpl>
    implements _$$MeasuresState$ErrorImplCopyWith<$Res> {
  __$$MeasuresState$ErrorImplCopyWithImpl(_$MeasuresState$ErrorImpl _value,
      $Res Function(_$MeasuresState$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measures = null,
    Object? last = freezed,
    Object? exception = null,
  }) {
    return _then(_$MeasuresState$ErrorImpl(
      measures: null == measures
          ? _value._measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<Measure>,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as Measure?,
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$MeasuresState$ErrorImpl extends _MeasuresState$Error {
  const _$MeasuresState$ErrorImpl(
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
  @override
  final Exception exception;

  @override
  String toString() {
    return 'MeasuresState.error(measures: $measures, last: $last, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasuresState$ErrorImpl &&
            const DeepCollectionEquality().equals(other._measures, _measures) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_measures), last, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasuresState$ErrorImplCopyWith<_$MeasuresState$ErrorImpl> get copyWith =>
      __$$MeasuresState$ErrorImplCopyWithImpl<_$MeasuresState$ErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Measure> measures, Measure? last) idle,
    required TResult Function(List<Measure> measures, Measure? last) processing,
    required TResult Function(
            List<Measure> measures, Measure? last, Exception exception)
        error,
  }) {
    return error(measures, last, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Measure> measures, Measure? last)? idle,
    TResult? Function(List<Measure> measures, Measure? last)? processing,
    TResult? Function(
            List<Measure> measures, Measure? last, Exception exception)?
        error,
  }) {
    return error?.call(measures, last, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Measure> measures, Measure? last)? idle,
    TResult Function(List<Measure> measures, Measure? last)? processing,
    TResult Function(
            List<Measure> measures, Measure? last, Exception exception)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(measures, last, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MeasuresState$Idle value) idle,
    required TResult Function(_MeasuresState$Processing value) processing,
    required TResult Function(_MeasuresState$Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MeasuresState$Idle value)? idle,
    TResult? Function(_MeasuresState$Processing value)? processing,
    TResult? Function(_MeasuresState$Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MeasuresState$Idle value)? idle,
    TResult Function(_MeasuresState$Processing value)? processing,
    TResult Function(_MeasuresState$Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MeasuresState$Error extends MeasuresState {
  const factory _MeasuresState$Error(
      {required final List<Measure> measures,
      required final Measure? last,
      required final Exception exception}) = _$MeasuresState$ErrorImpl;
  const _MeasuresState$Error._() : super._();

  @override
  List<Measure> get measures;
  @override
  Measure? get last;
  Exception get exception;
  @override
  @JsonKey(ignore: true)
  _$$MeasuresState$ErrorImplCopyWith<_$MeasuresState$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
