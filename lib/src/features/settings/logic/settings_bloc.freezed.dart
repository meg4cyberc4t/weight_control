// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SettingsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsEvent()';
  }
}

/// @nodoc
class $SettingsEventCopyWith<$Res> {
  $SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}

/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
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
    TResult Function(_SettingsEvent$UpdateThemeMode value)? updateThemeMode,
    TResult Function(_SettingsEvent$UpdateDesignMode value)? updateDesignMode,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SettingsEvent$UpdateThemeMode() when updateThemeMode != null:
        return updateThemeMode(_that);
      case _SettingsEvent$UpdateDesignMode() when updateDesignMode != null:
        return updateDesignMode(_that);
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
    required TResult Function(_SettingsEvent$UpdateThemeMode value)
        updateThemeMode,
    required TResult Function(_SettingsEvent$UpdateDesignMode value)
        updateDesignMode,
  }) {
    final _that = this;
    switch (_that) {
      case _SettingsEvent$UpdateThemeMode():
        return updateThemeMode(_that);
      case _SettingsEvent$UpdateDesignMode():
        return updateDesignMode(_that);
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
    TResult? Function(_SettingsEvent$UpdateThemeMode value)? updateThemeMode,
    TResult? Function(_SettingsEvent$UpdateDesignMode value)? updateDesignMode,
  }) {
    final _that = this;
    switch (_that) {
      case _SettingsEvent$UpdateThemeMode() when updateThemeMode != null:
        return updateThemeMode(_that);
      case _SettingsEvent$UpdateDesignMode() when updateDesignMode != null:
        return updateDesignMode(_that);
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
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(DesignMode designMode)? updateDesignMode,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SettingsEvent$UpdateThemeMode() when updateThemeMode != null:
        return updateThemeMode(_that.themeMode);
      case _SettingsEvent$UpdateDesignMode() when updateDesignMode != null:
        return updateDesignMode(_that.designMode);
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
    required TResult Function(ThemeMode themeMode) updateThemeMode,
    required TResult Function(DesignMode designMode) updateDesignMode,
  }) {
    final _that = this;
    switch (_that) {
      case _SettingsEvent$UpdateThemeMode():
        return updateThemeMode(_that.themeMode);
      case _SettingsEvent$UpdateDesignMode():
        return updateDesignMode(_that.designMode);
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
    TResult? Function(ThemeMode themeMode)? updateThemeMode,
    TResult? Function(DesignMode designMode)? updateDesignMode,
  }) {
    final _that = this;
    switch (_that) {
      case _SettingsEvent$UpdateThemeMode() when updateThemeMode != null:
        return updateThemeMode(_that.themeMode);
      case _SettingsEvent$UpdateDesignMode() when updateDesignMode != null:
        return updateDesignMode(_that.designMode);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SettingsEvent$UpdateThemeMode implements SettingsEvent {
  const _SettingsEvent$UpdateThemeMode(this.themeMode);

  final ThemeMode themeMode;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SettingsEvent$UpdateThemeModeCopyWith<_SettingsEvent$UpdateThemeMode>
      get copyWith => __$SettingsEvent$UpdateThemeModeCopyWithImpl<
          _SettingsEvent$UpdateThemeMode>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsEvent$UpdateThemeMode &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @override
  String toString() {
    return 'SettingsEvent.updateThemeMode(themeMode: $themeMode)';
  }
}

/// @nodoc
abstract mixin class _$SettingsEvent$UpdateThemeModeCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory _$SettingsEvent$UpdateThemeModeCopyWith(
          _SettingsEvent$UpdateThemeMode value,
          $Res Function(_SettingsEvent$UpdateThemeMode) _then) =
      __$SettingsEvent$UpdateThemeModeCopyWithImpl;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$SettingsEvent$UpdateThemeModeCopyWithImpl<$Res>
    implements _$SettingsEvent$UpdateThemeModeCopyWith<$Res> {
  __$SettingsEvent$UpdateThemeModeCopyWithImpl(this._self, this._then);

  final _SettingsEvent$UpdateThemeMode _self;
  final $Res Function(_SettingsEvent$UpdateThemeMode) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_SettingsEvent$UpdateThemeMode(
      null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _SettingsEvent$UpdateDesignMode implements SettingsEvent {
  const _SettingsEvent$UpdateDesignMode(this.designMode);

  final DesignMode designMode;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SettingsEvent$UpdateDesignModeCopyWith<_SettingsEvent$UpdateDesignMode>
      get copyWith => __$SettingsEvent$UpdateDesignModeCopyWithImpl<
          _SettingsEvent$UpdateDesignMode>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsEvent$UpdateDesignMode &&
            (identical(other.designMode, designMode) ||
                other.designMode == designMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, designMode);

  @override
  String toString() {
    return 'SettingsEvent.updateDesignMode(designMode: $designMode)';
  }
}

/// @nodoc
abstract mixin class _$SettingsEvent$UpdateDesignModeCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory _$SettingsEvent$UpdateDesignModeCopyWith(
          _SettingsEvent$UpdateDesignMode value,
          $Res Function(_SettingsEvent$UpdateDesignMode) _then) =
      __$SettingsEvent$UpdateDesignModeCopyWithImpl;
  @useResult
  $Res call({DesignMode designMode});
}

/// @nodoc
class __$SettingsEvent$UpdateDesignModeCopyWithImpl<$Res>
    implements _$SettingsEvent$UpdateDesignModeCopyWith<$Res> {
  __$SettingsEvent$UpdateDesignModeCopyWithImpl(this._self, this._then);

  final _SettingsEvent$UpdateDesignMode _self;
  final $Res Function(_SettingsEvent$UpdateDesignMode) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? designMode = null,
  }) {
    return _then(_SettingsEvent$UpdateDesignMode(
      null == designMode
          ? _self.designMode
          : designMode // ignore: cast_nullable_to_non_nullable
              as DesignMode,
    ));
  }
}

/// @nodoc
mixin _$SettingsState {
  ThemeMode get themeMode;
  DesignMode get designMode;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      _$SettingsStateCopyWithImpl<SettingsState>(
          this as SettingsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingsState &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.designMode, designMode) ||
                other.designMode == designMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, designMode);

  @override
  String toString() {
    return 'SettingsState(themeMode: $themeMode, designMode: $designMode)';
  }
}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) _then) =
      _$SettingsStateCopyWithImpl;
  @useResult
  $Res call({ThemeMode themeMode, DesignMode designMode});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? designMode = null,
  }) {
    return _then(_self.copyWith(
      themeMode: null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      designMode: null == designMode
          ? _self.designMode
          : designMode // ignore: cast_nullable_to_non_nullable
              as DesignMode,
    ));
  }
}

/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
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
    TResult Function(SettingsState$Idle value)? idle,
    TResult Function(SettingsState$Processing value)? processing,
    TResult Function(SettingsState$Error value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case SettingsState$Idle() when idle != null:
        return idle(_that);
      case SettingsState$Processing() when processing != null:
        return processing(_that);
      case SettingsState$Error() when error != null:
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
    required TResult Function(SettingsState$Idle value) idle,
    required TResult Function(SettingsState$Processing value) processing,
    required TResult Function(SettingsState$Error value) error,
  }) {
    final _that = this;
    switch (_that) {
      case SettingsState$Idle():
        return idle(_that);
      case SettingsState$Processing():
        return processing(_that);
      case SettingsState$Error():
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
    TResult? Function(SettingsState$Idle value)? idle,
    TResult? Function(SettingsState$Processing value)? processing,
    TResult? Function(SettingsState$Error value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case SettingsState$Idle() when idle != null:
        return idle(_that);
      case SettingsState$Processing() when processing != null:
        return processing(_that);
      case SettingsState$Error() when error != null:
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
    TResult Function(ThemeMode themeMode, DesignMode designMode)? idle,
    TResult Function(ThemeMode themeMode, DesignMode designMode)? processing,
    TResult Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)?
        error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case SettingsState$Idle() when idle != null:
        return idle(_that.themeMode, _that.designMode);
      case SettingsState$Processing() when processing != null:
        return processing(_that.themeMode, _that.designMode);
      case SettingsState$Error() when error != null:
        return error(_that.themeMode, _that.designMode, _that.exception);
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
    required TResult Function(ThemeMode themeMode, DesignMode designMode) idle,
    required TResult Function(ThemeMode themeMode, DesignMode designMode)
        processing,
    required TResult Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)
        error,
  }) {
    final _that = this;
    switch (_that) {
      case SettingsState$Idle():
        return idle(_that.themeMode, _that.designMode);
      case SettingsState$Processing():
        return processing(_that.themeMode, _that.designMode);
      case SettingsState$Error():
        return error(_that.themeMode, _that.designMode, _that.exception);
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
    TResult? Function(ThemeMode themeMode, DesignMode designMode)? idle,
    TResult? Function(ThemeMode themeMode, DesignMode designMode)? processing,
    TResult? Function(
            ThemeMode themeMode, DesignMode designMode, Exception exception)?
        error,
  }) {
    final _that = this;
    switch (_that) {
      case SettingsState$Idle() when idle != null:
        return idle(_that.themeMode, _that.designMode);
      case SettingsState$Processing() when processing != null:
        return processing(_that.themeMode, _that.designMode);
      case SettingsState$Error() when error != null:
        return error(_that.themeMode, _that.designMode, _that.exception);
      case _:
        return null;
    }
  }
}

/// @nodoc

class SettingsState$Idle implements SettingsState {
  const SettingsState$Idle({required this.themeMode, required this.designMode});

  @override
  final ThemeMode themeMode;
  @override
  final DesignMode designMode;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingsState$IdleCopyWith<SettingsState$Idle> get copyWith =>
      _$SettingsState$IdleCopyWithImpl<SettingsState$Idle>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingsState$Idle &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.designMode, designMode) ||
                other.designMode == designMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, designMode);

  @override
  String toString() {
    return 'SettingsState.idle(themeMode: $themeMode, designMode: $designMode)';
  }
}

/// @nodoc
abstract mixin class $SettingsState$IdleCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory $SettingsState$IdleCopyWith(
          SettingsState$Idle value, $Res Function(SettingsState$Idle) _then) =
      _$SettingsState$IdleCopyWithImpl;
  @override
  @useResult
  $Res call({ThemeMode themeMode, DesignMode designMode});
}

/// @nodoc
class _$SettingsState$IdleCopyWithImpl<$Res>
    implements $SettingsState$IdleCopyWith<$Res> {
  _$SettingsState$IdleCopyWithImpl(this._self, this._then);

  final SettingsState$Idle _self;
  final $Res Function(SettingsState$Idle) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? themeMode = null,
    Object? designMode = null,
  }) {
    return _then(SettingsState$Idle(
      themeMode: null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      designMode: null == designMode
          ? _self.designMode
          : designMode // ignore: cast_nullable_to_non_nullable
              as DesignMode,
    ));
  }
}

/// @nodoc

class SettingsState$Processing implements SettingsState {
  const SettingsState$Processing(
      {required this.themeMode, required this.designMode});

  @override
  final ThemeMode themeMode;
  @override
  final DesignMode designMode;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingsState$ProcessingCopyWith<SettingsState$Processing> get copyWith =>
      _$SettingsState$ProcessingCopyWithImpl<SettingsState$Processing>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingsState$Processing &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.designMode, designMode) ||
                other.designMode == designMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, designMode);

  @override
  String toString() {
    return 'SettingsState.processing(themeMode: $themeMode, designMode: $designMode)';
  }
}

/// @nodoc
abstract mixin class $SettingsState$ProcessingCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory $SettingsState$ProcessingCopyWith(SettingsState$Processing value,
          $Res Function(SettingsState$Processing) _then) =
      _$SettingsState$ProcessingCopyWithImpl;
  @override
  @useResult
  $Res call({ThemeMode themeMode, DesignMode designMode});
}

/// @nodoc
class _$SettingsState$ProcessingCopyWithImpl<$Res>
    implements $SettingsState$ProcessingCopyWith<$Res> {
  _$SettingsState$ProcessingCopyWithImpl(this._self, this._then);

  final SettingsState$Processing _self;
  final $Res Function(SettingsState$Processing) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? themeMode = null,
    Object? designMode = null,
  }) {
    return _then(SettingsState$Processing(
      themeMode: null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      designMode: null == designMode
          ? _self.designMode
          : designMode // ignore: cast_nullable_to_non_nullable
              as DesignMode,
    ));
  }
}

/// @nodoc

class SettingsState$Error implements SettingsState {
  const SettingsState$Error(
      {required this.themeMode,
      required this.designMode,
      required this.exception});

  @override
  final ThemeMode themeMode;
  @override
  final DesignMode designMode;
  final Exception exception;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingsState$ErrorCopyWith<SettingsState$Error> get copyWith =>
      _$SettingsState$ErrorCopyWithImpl<SettingsState$Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingsState$Error &&
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

  @override
  String toString() {
    return 'SettingsState.error(themeMode: $themeMode, designMode: $designMode, exception: $exception)';
  }
}

/// @nodoc
abstract mixin class $SettingsState$ErrorCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory $SettingsState$ErrorCopyWith(
          SettingsState$Error value, $Res Function(SettingsState$Error) _then) =
      _$SettingsState$ErrorCopyWithImpl;
  @override
  @useResult
  $Res call({ThemeMode themeMode, DesignMode designMode, Exception exception});
}

/// @nodoc
class _$SettingsState$ErrorCopyWithImpl<$Res>
    implements $SettingsState$ErrorCopyWith<$Res> {
  _$SettingsState$ErrorCopyWithImpl(this._self, this._then);

  final SettingsState$Error _self;
  final $Res Function(SettingsState$Error) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? themeMode = null,
    Object? designMode = null,
    Object? exception = null,
  }) {
    return _then(SettingsState$Error(
      themeMode: null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      designMode: null == designMode
          ? _self.designMode
          : designMode // ignore: cast_nullable_to_non_nullable
              as DesignMode,
      exception: null == exception
          ? _self.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

// dart format on
