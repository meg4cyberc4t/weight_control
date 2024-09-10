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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) updateThemeMode,
    required TResult Function(DesignMode designMode) updateDesignMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? updateThemeMode,
    TResult? Function(DesignMode designMode)? updateDesignMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(DesignMode designMode)? updateDesignMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEvent$UpdateThemeMode value)
        updateThemeMode,
    required TResult Function(_SettingsEvent$UpdateDesignMode value)
        updateDesignMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEvent$UpdateThemeMode value)? updateThemeMode,
    TResult? Function(_SettingsEvent$UpdateDesignMode value)? updateDesignMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEvent$UpdateThemeMode value)? updateThemeMode,
    TResult Function(_SettingsEvent$UpdateDesignMode value)? updateDesignMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SettingsEvent$UpdateThemeModeImplCopyWith<$Res> {
  factory _$$SettingsEvent$UpdateThemeModeImplCopyWith(
          _$SettingsEvent$UpdateThemeModeImpl value,
          $Res Function(_$SettingsEvent$UpdateThemeModeImpl) then) =
      __$$SettingsEvent$UpdateThemeModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$SettingsEvent$UpdateThemeModeImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res,
        _$SettingsEvent$UpdateThemeModeImpl>
    implements _$$SettingsEvent$UpdateThemeModeImplCopyWith<$Res> {
  __$$SettingsEvent$UpdateThemeModeImplCopyWithImpl(
      _$SettingsEvent$UpdateThemeModeImpl _value,
      $Res Function(_$SettingsEvent$UpdateThemeModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$SettingsEvent$UpdateThemeModeImpl(
      null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$SettingsEvent$UpdateThemeModeImpl
    implements _SettingsEvent$UpdateThemeMode {
  const _$SettingsEvent$UpdateThemeModeImpl(this.themeMode);

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
            other is _$SettingsEvent$UpdateThemeModeImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEvent$UpdateThemeModeImplCopyWith<
          _$SettingsEvent$UpdateThemeModeImpl>
      get copyWith => __$$SettingsEvent$UpdateThemeModeImplCopyWithImpl<
          _$SettingsEvent$UpdateThemeModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) updateThemeMode,
    required TResult Function(DesignMode designMode) updateDesignMode,
  }) {
    return updateThemeMode(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? updateThemeMode,
    TResult? Function(DesignMode designMode)? updateDesignMode,
  }) {
    return updateThemeMode?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(DesignMode designMode)? updateDesignMode,
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
    required TResult Function(_SettingsEvent$UpdateThemeMode value)
        updateThemeMode,
    required TResult Function(_SettingsEvent$UpdateDesignMode value)
        updateDesignMode,
  }) {
    return updateThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEvent$UpdateThemeMode value)? updateThemeMode,
    TResult? Function(_SettingsEvent$UpdateDesignMode value)? updateDesignMode,
  }) {
    return updateThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEvent$UpdateThemeMode value)? updateThemeMode,
    TResult Function(_SettingsEvent$UpdateDesignMode value)? updateDesignMode,
    required TResult orElse(),
  }) {
    if (updateThemeMode != null) {
      return updateThemeMode(this);
    }
    return orElse();
  }
}

abstract class _SettingsEvent$UpdateThemeMode implements SettingsEvent {
  const factory _SettingsEvent$UpdateThemeMode(final ThemeMode themeMode) =
      _$SettingsEvent$UpdateThemeModeImpl;

  ThemeMode get themeMode;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsEvent$UpdateThemeModeImplCopyWith<
          _$SettingsEvent$UpdateThemeModeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsEvent$UpdateDesignModeImplCopyWith<$Res> {
  factory _$$SettingsEvent$UpdateDesignModeImplCopyWith(
          _$SettingsEvent$UpdateDesignModeImpl value,
          $Res Function(_$SettingsEvent$UpdateDesignModeImpl) then) =
      __$$SettingsEvent$UpdateDesignModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DesignMode designMode});
}

/// @nodoc
class __$$SettingsEvent$UpdateDesignModeImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res,
        _$SettingsEvent$UpdateDesignModeImpl>
    implements _$$SettingsEvent$UpdateDesignModeImplCopyWith<$Res> {
  __$$SettingsEvent$UpdateDesignModeImplCopyWithImpl(
      _$SettingsEvent$UpdateDesignModeImpl _value,
      $Res Function(_$SettingsEvent$UpdateDesignModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? designMode = null,
  }) {
    return _then(_$SettingsEvent$UpdateDesignModeImpl(
      null == designMode
          ? _value.designMode
          : designMode // ignore: cast_nullable_to_non_nullable
              as DesignMode,
    ));
  }
}

/// @nodoc

class _$SettingsEvent$UpdateDesignModeImpl
    implements _SettingsEvent$UpdateDesignMode {
  const _$SettingsEvent$UpdateDesignModeImpl(this.designMode);

  @override
  final DesignMode designMode;

  @override
  String toString() {
    return 'SettingsEvent.updateDesignMode(designMode: $designMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEvent$UpdateDesignModeImpl &&
            (identical(other.designMode, designMode) ||
                other.designMode == designMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, designMode);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEvent$UpdateDesignModeImplCopyWith<
          _$SettingsEvent$UpdateDesignModeImpl>
      get copyWith => __$$SettingsEvent$UpdateDesignModeImplCopyWithImpl<
          _$SettingsEvent$UpdateDesignModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) updateThemeMode,
    required TResult Function(DesignMode designMode) updateDesignMode,
  }) {
    return updateDesignMode(designMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? updateThemeMode,
    TResult? Function(DesignMode designMode)? updateDesignMode,
  }) {
    return updateDesignMode?.call(designMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(DesignMode designMode)? updateDesignMode,
    required TResult orElse(),
  }) {
    if (updateDesignMode != null) {
      return updateDesignMode(designMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEvent$UpdateThemeMode value)
        updateThemeMode,
    required TResult Function(_SettingsEvent$UpdateDesignMode value)
        updateDesignMode,
  }) {
    return updateDesignMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEvent$UpdateThemeMode value)? updateThemeMode,
    TResult? Function(_SettingsEvent$UpdateDesignMode value)? updateDesignMode,
  }) {
    return updateDesignMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEvent$UpdateThemeMode value)? updateThemeMode,
    TResult Function(_SettingsEvent$UpdateDesignMode value)? updateDesignMode,
    required TResult orElse(),
  }) {
    if (updateDesignMode != null) {
      return updateDesignMode(this);
    }
    return orElse();
  }
}

abstract class _SettingsEvent$UpdateDesignMode implements SettingsEvent {
  const factory _SettingsEvent$UpdateDesignMode(final DesignMode designMode) =
      _$SettingsEvent$UpdateDesignModeImpl;

  DesignMode get designMode;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsEvent$UpdateDesignModeImplCopyWith<
          _$SettingsEvent$UpdateDesignModeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  DesignMode get designMode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode, DesignMode designMode) idle,
    required TResult Function(ThemeMode themeMode, DesignMode designMode)
        processing,
    required TResult Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode, DesignMode designMode)? idle,
    TResult? Function(ThemeMode themeMode, DesignMode designMode)? processing,
    TResult? Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode, DesignMode designMode)? idle,
    TResult Function(ThemeMode themeMode, DesignMode designMode)? processing,
    TResult Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)?
        error,
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

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({ThemeMode themeMode, DesignMode designMode});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? designMode = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      designMode: null == designMode
          ? _value.designMode
          : designMode // ignore: cast_nullable_to_non_nullable
              as DesignMode,
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
  $Res call({ThemeMode themeMode, DesignMode designMode});
}

/// @nodoc
class __$$SettingsState$IdleImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsState$IdleImpl>
    implements _$$SettingsState$IdleImplCopyWith<$Res> {
  __$$SettingsState$IdleImplCopyWithImpl(_$SettingsState$IdleImpl _value,
      $Res Function(_$SettingsState$IdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? designMode = null,
  }) {
    return _then(_$SettingsState$IdleImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      designMode: null == designMode
          ? _value.designMode
          : designMode // ignore: cast_nullable_to_non_nullable
              as DesignMode,
    ));
  }
}

/// @nodoc

class _$SettingsState$IdleImpl implements SettingsState$Idle {
  const _$SettingsState$IdleImpl(
      {required this.themeMode, required this.designMode});

  @override
  final ThemeMode themeMode;
  @override
  final DesignMode designMode;

  @override
  String toString() {
    return 'SettingsState.idle(themeMode: $themeMode, designMode: $designMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsState$IdleImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.designMode, designMode) ||
                other.designMode == designMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, designMode);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsState$IdleImplCopyWith<_$SettingsState$IdleImpl> get copyWith =>
      __$$SettingsState$IdleImplCopyWithImpl<_$SettingsState$IdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode, DesignMode designMode) idle,
    required TResult Function(ThemeMode themeMode, DesignMode designMode)
        processing,
    required TResult Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)
        error,
  }) {
    return idle(themeMode, designMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode, DesignMode designMode)? idle,
    TResult? Function(ThemeMode themeMode, DesignMode designMode)? processing,
    TResult? Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)?
        error,
  }) {
    return idle?.call(themeMode, designMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode, DesignMode designMode)? idle,
    TResult Function(ThemeMode themeMode, DesignMode designMode)? processing,
    TResult Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)?
        error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(themeMode, designMode);
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
  const factory SettingsState$Idle(
      {required final ThemeMode themeMode,
      required final DesignMode designMode}) = _$SettingsState$IdleImpl;

  @override
  ThemeMode get themeMode;
  @override
  DesignMode get designMode;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  $Res call({ThemeMode themeMode, DesignMode designMode});
}

/// @nodoc
class __$$SettingsState$ProcessingImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsState$ProcessingImpl>
    implements _$$SettingsState$ProcessingImplCopyWith<$Res> {
  __$$SettingsState$ProcessingImplCopyWithImpl(
      _$SettingsState$ProcessingImpl _value,
      $Res Function(_$SettingsState$ProcessingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? designMode = null,
  }) {
    return _then(_$SettingsState$ProcessingImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      designMode: null == designMode
          ? _value.designMode
          : designMode // ignore: cast_nullable_to_non_nullable
              as DesignMode,
    ));
  }
}

/// @nodoc

class _$SettingsState$ProcessingImpl implements SettingsState$Processing {
  const _$SettingsState$ProcessingImpl(
      {required this.themeMode, required this.designMode});

  @override
  final ThemeMode themeMode;
  @override
  final DesignMode designMode;

  @override
  String toString() {
    return 'SettingsState.processing(themeMode: $themeMode, designMode: $designMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsState$ProcessingImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.designMode, designMode) ||
                other.designMode == designMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, designMode);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsState$ProcessingImplCopyWith<_$SettingsState$ProcessingImpl>
      get copyWith => __$$SettingsState$ProcessingImplCopyWithImpl<
          _$SettingsState$ProcessingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode, DesignMode designMode) idle,
    required TResult Function(ThemeMode themeMode, DesignMode designMode)
        processing,
    required TResult Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)
        error,
  }) {
    return processing(themeMode, designMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode, DesignMode designMode)? idle,
    TResult? Function(ThemeMode themeMode, DesignMode designMode)? processing,
    TResult? Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)?
        error,
  }) {
    return processing?.call(themeMode, designMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode, DesignMode designMode)? idle,
    TResult Function(ThemeMode themeMode, DesignMode designMode)? processing,
    TResult Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)?
        error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(themeMode, designMode);
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
  const factory SettingsState$Processing(
      {required final ThemeMode themeMode,
      required final DesignMode designMode}) = _$SettingsState$ProcessingImpl;

  @override
  ThemeMode get themeMode;
  @override
  DesignMode get designMode;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  $Res call({ThemeMode themeMode, DesignMode designMode, Exception exception});
}

/// @nodoc
class __$$SettingsState$ErrorImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsState$ErrorImpl>
    implements _$$SettingsState$ErrorImplCopyWith<$Res> {
  __$$SettingsState$ErrorImplCopyWithImpl(_$SettingsState$ErrorImpl _value,
      $Res Function(_$SettingsState$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? designMode = null,
    Object? exception = null,
  }) {
    return _then(_$SettingsState$ErrorImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      designMode: null == designMode
          ? _value.designMode
          : designMode // ignore: cast_nullable_to_non_nullable
              as DesignMode,
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
      {required this.themeMode,
      required this.designMode,
      required this.exception});

  @override
  final ThemeMode themeMode;
  @override
  final DesignMode designMode;
  @override
  final Exception exception;

  @override
  String toString() {
    return 'SettingsState.error(themeMode: $themeMode, designMode: $designMode, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsState$ErrorImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.designMode, designMode) ||
                other.designMode == designMode) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, themeMode, designMode, exception);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsState$ErrorImplCopyWith<_$SettingsState$ErrorImpl> get copyWith =>
      __$$SettingsState$ErrorImplCopyWithImpl<_$SettingsState$ErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode, DesignMode designMode) idle,
    required TResult Function(ThemeMode themeMode, DesignMode designMode)
        processing,
    required TResult Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)
        error,
  }) {
    return error(themeMode, designMode, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode, DesignMode designMode)? idle,
    TResult? Function(ThemeMode themeMode, DesignMode designMode)? processing,
    TResult? Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)?
        error,
  }) {
    return error?.call(themeMode, designMode, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode, DesignMode designMode)? idle,
    TResult Function(ThemeMode themeMode, DesignMode designMode)? processing,
    TResult Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(themeMode, designMode, exception);
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
      required final DesignMode designMode,
      required final Exception exception}) = _$SettingsState$ErrorImpl;

  @override
  ThemeMode get themeMode;
  @override
  DesignMode get designMode;
  Exception get exception;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsState$ErrorImplCopyWith<_$SettingsState$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
