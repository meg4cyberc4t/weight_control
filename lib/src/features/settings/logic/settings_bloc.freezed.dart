// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) updateThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? updateThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateThemeMode value) updateThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateThemeMode value)? updateThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateThemeMode value)? updateThemeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsEventCopyWith<SettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateThemeModeImplCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory _$$UpdateThemeModeImplCopyWith(_$UpdateThemeModeImpl value,
          $Res Function(_$UpdateThemeModeImpl) then) =
      __$$UpdateThemeModeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$UpdateThemeModeImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$UpdateThemeModeImpl>
    implements _$$UpdateThemeModeImplCopyWith<$Res> {
  __$$UpdateThemeModeImplCopyWithImpl(
      _$UpdateThemeModeImpl _value, $Res Function(_$UpdateThemeModeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$UpdateThemeModeImpl(
      null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$UpdateThemeModeImpl implements _UpdateThemeMode {
  const _$UpdateThemeModeImpl(this.themeMode);

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'SettingsEvent.updateThemeMode(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateThemeModeImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateThemeModeImplCopyWith<_$UpdateThemeModeImpl> get copyWith =>
      __$$UpdateThemeModeImplCopyWithImpl<_$UpdateThemeModeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) updateThemeMode,
  }) {
    return updateThemeMode(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? updateThemeMode,
  }) {
    return updateThemeMode?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    required TResult orElse(),
  }) {
    if (updateThemeMode != null) {
      return updateThemeMode(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateThemeMode value) updateThemeMode,
  }) {
    return updateThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateThemeMode value)? updateThemeMode,
  }) {
    return updateThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateThemeMode value)? updateThemeMode,
    required TResult orElse(),
  }) {
    if (updateThemeMode != null) {
      return updateThemeMode(this);
    }
    return orElse();
  }
}

abstract class _UpdateThemeMode implements SettingsEvent {
  const factory _UpdateThemeMode(final ThemeMode themeMode) =
      _$UpdateThemeModeImpl;

  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$UpdateThemeModeImplCopyWith<_$UpdateThemeModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) idle,
    required TResult Function(ThemeMode themeMode) processing,
    required TResult Function(ThemeMode themeMode, Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? idle,
    TResult? Function(ThemeMode themeMode)? processing,
    TResult? Function(ThemeMode themeMode, Exception exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? idle,
    TResult Function(ThemeMode themeMode)? processing,
    TResult Function(ThemeMode themeMode, Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsState$Idle value) idle,
    required TResult Function(SettingsState$Processing value) processing,
    required TResult Function(SettingsState$Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsState$Idle value)? idle,
    TResult? Function(SettingsState$Processing value)? processing,
    TResult? Function(SettingsState$Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsState$Idle value)? idle,
    TResult Function(SettingsState$Processing value)? processing,
    TResult Function(SettingsState$Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsState$IdleImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsState$IdleImplCopyWith(_$SettingsState$IdleImpl value,
          $Res Function(_$SettingsState$IdleImpl) then) =
      __$$SettingsState$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$SettingsState$IdleImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsState$IdleImpl>
    implements _$$SettingsState$IdleImplCopyWith<$Res> {
  __$$SettingsState$IdleImplCopyWithImpl(_$SettingsState$IdleImpl _value,
      $Res Function(_$SettingsState$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$SettingsState$IdleImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$SettingsState$IdleImpl implements SettingsState$Idle {
  const _$SettingsState$IdleImpl({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'SettingsState.idle(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsState$IdleImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsState$IdleImplCopyWith<_$SettingsState$IdleImpl> get copyWith =>
      __$$SettingsState$IdleImplCopyWithImpl<_$SettingsState$IdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) idle,
    required TResult Function(ThemeMode themeMode) processing,
    required TResult Function(ThemeMode themeMode, Exception exception) error,
  }) {
    return idle(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? idle,
    TResult? Function(ThemeMode themeMode)? processing,
    TResult? Function(ThemeMode themeMode, Exception exception)? error,
  }) {
    return idle?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? idle,
    TResult Function(ThemeMode themeMode)? processing,
    TResult Function(ThemeMode themeMode, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsState$Idle value) idle,
    required TResult Function(SettingsState$Processing value) processing,
    required TResult Function(SettingsState$Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsState$Idle value)? idle,
    TResult? Function(SettingsState$Processing value)? processing,
    TResult? Function(SettingsState$Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsState$Idle value)? idle,
    TResult Function(SettingsState$Processing value)? processing,
    TResult Function(SettingsState$Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class SettingsState$Idle implements SettingsState {
  const factory SettingsState$Idle({required final ThemeMode themeMode}) =
      _$SettingsState$IdleImpl;

  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$SettingsState$IdleImplCopyWith<_$SettingsState$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsState$ProcessingImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsState$ProcessingImplCopyWith(
          _$SettingsState$ProcessingImpl value,
          $Res Function(_$SettingsState$ProcessingImpl) then) =
      __$$SettingsState$ProcessingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$SettingsState$ProcessingImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsState$ProcessingImpl>
    implements _$$SettingsState$ProcessingImplCopyWith<$Res> {
  __$$SettingsState$ProcessingImplCopyWithImpl(
      _$SettingsState$ProcessingImpl _value,
      $Res Function(_$SettingsState$ProcessingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$SettingsState$ProcessingImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$SettingsState$ProcessingImpl implements SettingsState$Processing {
  const _$SettingsState$ProcessingImpl({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'SettingsState.processing(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsState$ProcessingImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsState$ProcessingImplCopyWith<_$SettingsState$ProcessingImpl>
      get copyWith => __$$SettingsState$ProcessingImplCopyWithImpl<
          _$SettingsState$ProcessingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) idle,
    required TResult Function(ThemeMode themeMode) processing,
    required TResult Function(ThemeMode themeMode, Exception exception) error,
  }) {
    return processing(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? idle,
    TResult? Function(ThemeMode themeMode)? processing,
    TResult? Function(ThemeMode themeMode, Exception exception)? error,
  }) {
    return processing?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? idle,
    TResult Function(ThemeMode themeMode)? processing,
    TResult Function(ThemeMode themeMode, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsState$Idle value) idle,
    required TResult Function(SettingsState$Processing value) processing,
    required TResult Function(SettingsState$Error value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsState$Idle value)? idle,
    TResult? Function(SettingsState$Processing value)? processing,
    TResult? Function(SettingsState$Error value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsState$Idle value)? idle,
    TResult Function(SettingsState$Processing value)? processing,
    TResult Function(SettingsState$Error value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class SettingsState$Processing implements SettingsState {
  const factory SettingsState$Processing({required final ThemeMode themeMode}) =
      _$SettingsState$ProcessingImpl;

  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$SettingsState$ProcessingImplCopyWith<_$SettingsState$ProcessingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsState$ErrorImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsState$ErrorImplCopyWith(_$SettingsState$ErrorImpl value,
          $Res Function(_$SettingsState$ErrorImpl) then) =
      __$$SettingsState$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode, Exception exception});
}

/// @nodoc
class __$$SettingsState$ErrorImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsState$ErrorImpl>
    implements _$$SettingsState$ErrorImplCopyWith<$Res> {
  __$$SettingsState$ErrorImplCopyWithImpl(_$SettingsState$ErrorImpl _value,
      $Res Function(_$SettingsState$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? exception = null,
  }) {
    return _then(_$SettingsState$ErrorImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$SettingsState$ErrorImpl implements SettingsState$Error {
  const _$SettingsState$ErrorImpl(
      {required this.themeMode, required this.exception});

  @override
  final ThemeMode themeMode;
  @override
  final Exception exception;

  @override
  String toString() {
    return 'SettingsState.error(themeMode: $themeMode, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsState$ErrorImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsState$ErrorImplCopyWith<_$SettingsState$ErrorImpl> get copyWith =>
      __$$SettingsState$ErrorImplCopyWithImpl<_$SettingsState$ErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) idle,
    required TResult Function(ThemeMode themeMode) processing,
    required TResult Function(ThemeMode themeMode, Exception exception) error,
  }) {
    return error(themeMode, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? idle,
    TResult? Function(ThemeMode themeMode)? processing,
    TResult? Function(ThemeMode themeMode, Exception exception)? error,
  }) {
    return error?.call(themeMode, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? idle,
    TResult Function(ThemeMode themeMode)? processing,
    TResult Function(ThemeMode themeMode, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(themeMode, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsState$Idle value) idle,
    required TResult Function(SettingsState$Processing value) processing,
    required TResult Function(SettingsState$Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsState$Idle value)? idle,
    TResult? Function(SettingsState$Processing value)? processing,
    TResult? Function(SettingsState$Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsState$Idle value)? idle,
    TResult Function(SettingsState$Processing value)? processing,
    TResult Function(SettingsState$Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SettingsState$Error implements SettingsState {
  const factory SettingsState$Error(
      {required final ThemeMode themeMode,
      required final Exception exception}) = _$SettingsState$ErrorImpl;

  @override
  ThemeMode get themeMode;
  Exception get exception;
  @override
  @JsonKey(ignore: true)
  _$$SettingsState$ErrorImplCopyWith<_$SettingsState$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
