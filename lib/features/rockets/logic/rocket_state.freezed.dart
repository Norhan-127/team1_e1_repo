// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rocket_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RocketState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(T data) success,
    required TResult Function(NetworkExceptions networkExceptions) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(T data)? success,
    TResult? Function(NetworkExceptions networkExceptions)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions networkExceptions)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RocketInitial<T> value) initial,
    required TResult Function(_RocketLoading<T> value) load,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RocketInitial<T> value)? initial,
    TResult? Function(_RocketLoading<T> value)? load,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RocketInitial<T> value)? initial,
    TResult Function(_RocketLoading<T> value)? load,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RocketStateCopyWith<T, $Res> {
  factory $RocketStateCopyWith(
          RocketState<T> value, $Res Function(RocketState<T>) then) =
      _$RocketStateCopyWithImpl<T, $Res, RocketState<T>>;
}

/// @nodoc
class _$RocketStateCopyWithImpl<T, $Res, $Val extends RocketState<T>>
    implements $RocketStateCopyWith<T, $Res> {
  _$RocketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RocketInitialImplCopyWith<T, $Res> {
  factory _$$RocketInitialImplCopyWith(_$RocketInitialImpl<T> value,
          $Res Function(_$RocketInitialImpl<T>) then) =
      __$$RocketInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RocketInitialImplCopyWithImpl<T, $Res>
    extends _$RocketStateCopyWithImpl<T, $Res, _$RocketInitialImpl<T>>
    implements _$$RocketInitialImplCopyWith<T, $Res> {
  __$$RocketInitialImplCopyWithImpl(_$RocketInitialImpl<T> _value,
      $Res Function(_$RocketInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RocketInitialImpl<T> implements _RocketInitial<T> {
  const _$RocketInitialImpl();

  @override
  String toString() {
    return 'RocketState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RocketInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(T data) success,
    required TResult Function(NetworkExceptions networkExceptions) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(T data)? success,
    TResult? Function(NetworkExceptions networkExceptions)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions networkExceptions)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RocketInitial<T> value) initial,
    required TResult Function(_RocketLoading<T> value) load,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RocketInitial<T> value)? initial,
    TResult? Function(_RocketLoading<T> value)? load,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Error<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RocketInitial<T> value)? initial,
    TResult Function(_RocketLoading<T> value)? load,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RocketInitial<T> implements RocketState<T> {
  const factory _RocketInitial() = _$RocketInitialImpl<T>;
}

/// @nodoc
abstract class _$$RocketLoadingImplCopyWith<T, $Res> {
  factory _$$RocketLoadingImplCopyWith(_$RocketLoadingImpl<T> value,
          $Res Function(_$RocketLoadingImpl<T>) then) =
      __$$RocketLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RocketLoadingImplCopyWithImpl<T, $Res>
    extends _$RocketStateCopyWithImpl<T, $Res, _$RocketLoadingImpl<T>>
    implements _$$RocketLoadingImplCopyWith<T, $Res> {
  __$$RocketLoadingImplCopyWithImpl(_$RocketLoadingImpl<T> _value,
      $Res Function(_$RocketLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RocketLoadingImpl<T> implements _RocketLoading<T> {
  const _$RocketLoadingImpl();

  @override
  String toString() {
    return 'RocketState<$T>.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RocketLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(T data) success,
    required TResult Function(NetworkExceptions networkExceptions) error,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(T data)? success,
    TResult? Function(NetworkExceptions networkExceptions)? error,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions networkExceptions)? error,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RocketInitial<T> value) initial,
    required TResult Function(_RocketLoading<T> value) load,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RocketInitial<T> value)? initial,
    TResult? Function(_RocketLoading<T> value)? load,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Error<T> value)? error,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RocketInitial<T> value)? initial,
    TResult Function(_RocketLoading<T> value)? load,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _RocketLoading<T> implements RocketState<T> {
  const factory _RocketLoading() = _$RocketLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$RocketStateCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> implements _Success<T> {
  const _$SuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'RocketState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(T data) success,
    required TResult Function(NetworkExceptions networkExceptions) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(T data)? success,
    TResult? Function(NetworkExceptions networkExceptions)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions networkExceptions)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RocketInitial<T> value) initial,
    required TResult Function(_RocketLoading<T> value) load,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RocketInitial<T> value)? initial,
    TResult? Function(_RocketLoading<T> value)? load,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Error<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RocketInitial<T> value)? initial,
    TResult Function(_RocketLoading<T> value)? load,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements RocketState<T> {
  const factory _Success(final T data) = _$SuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({NetworkExceptions networkExceptions});

  $NetworkExceptionsCopyWith<$Res> get networkExceptions;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$RocketStateCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkExceptions = null,
  }) {
    return _then(_$ErrorImpl<T>(
      null == networkExceptions
          ? _value.networkExceptions
          : networkExceptions // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res> get networkExceptions {
    return $NetworkExceptionsCopyWith<$Res>(_value.networkExceptions, (value) {
      return _then(_value.copyWith(networkExceptions: value));
    });
  }
}

/// @nodoc

class _$ErrorImpl<T> implements _Error<T> {
  const _$ErrorImpl(this.networkExceptions);

  @override
  final NetworkExceptions networkExceptions;

  @override
  String toString() {
    return 'RocketState<$T>.error(networkExceptions: $networkExceptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.networkExceptions, networkExceptions) ||
                other.networkExceptions == networkExceptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkExceptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(T data) success,
    required TResult Function(NetworkExceptions networkExceptions) error,
  }) {
    return error(networkExceptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(T data)? success,
    TResult? Function(NetworkExceptions networkExceptions)? error,
  }) {
    return error?.call(networkExceptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions networkExceptions)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(networkExceptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RocketInitial<T> value) initial,
    required TResult Function(_RocketLoading<T> value) load,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RocketInitial<T> value)? initial,
    TResult? Function(_RocketLoading<T> value)? load,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RocketInitial<T> value)? initial,
    TResult Function(_RocketLoading<T> value)? load,
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements RocketState<T> {
  const factory _Error(final NetworkExceptions networkExceptions) =
      _$ErrorImpl<T>;

  NetworkExceptions get networkExceptions;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
