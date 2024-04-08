// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'capsule_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CapsuleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Capsule> allCapsules) getCapsules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Capsule> allCapsules)? getCapsules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Capsule> allCapsules)? getCapsules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CapsuleInitial value) initial,
    required TResult Function(_GetCapsules value) getCapsules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CapsuleInitial value)? initial,
    TResult? Function(_GetCapsules value)? getCapsules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CapsuleInitial value)? initial,
    TResult Function(_GetCapsules value)? getCapsules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapsuleStateCopyWith<$Res> {
  factory $CapsuleStateCopyWith(
          CapsuleState value, $Res Function(CapsuleState) then) =
      _$CapsuleStateCopyWithImpl<$Res, CapsuleState>;
}

/// @nodoc
class _$CapsuleStateCopyWithImpl<$Res, $Val extends CapsuleState>
    implements $CapsuleStateCopyWith<$Res> {
  _$CapsuleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CapsuleInitialImplCopyWith<$Res> {
  factory _$$CapsuleInitialImplCopyWith(_$CapsuleInitialImpl value,
          $Res Function(_$CapsuleInitialImpl) then) =
      __$$CapsuleInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CapsuleInitialImplCopyWithImpl<$Res>
    extends _$CapsuleStateCopyWithImpl<$Res, _$CapsuleInitialImpl>
    implements _$$CapsuleInitialImplCopyWith<$Res> {
  __$$CapsuleInitialImplCopyWithImpl(
      _$CapsuleInitialImpl _value, $Res Function(_$CapsuleInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CapsuleInitialImpl implements _CapsuleInitial {
  const _$CapsuleInitialImpl();

  @override
  String toString() {
    return 'CapsuleState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CapsuleInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Capsule> allCapsules) getCapsules,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Capsule> allCapsules)? getCapsules,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Capsule> allCapsules)? getCapsules,
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
    required TResult Function(_CapsuleInitial value) initial,
    required TResult Function(_GetCapsules value) getCapsules,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CapsuleInitial value)? initial,
    TResult? Function(_GetCapsules value)? getCapsules,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CapsuleInitial value)? initial,
    TResult Function(_GetCapsules value)? getCapsules,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CapsuleInitial implements CapsuleState {
  const factory _CapsuleInitial() = _$CapsuleInitialImpl;
}

/// @nodoc
abstract class _$$GetCapsulesImplCopyWith<$Res> {
  factory _$$GetCapsulesImplCopyWith(
          _$GetCapsulesImpl value, $Res Function(_$GetCapsulesImpl) then) =
      __$$GetCapsulesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Capsule> allCapsules});
}

/// @nodoc
class __$$GetCapsulesImplCopyWithImpl<$Res>
    extends _$CapsuleStateCopyWithImpl<$Res, _$GetCapsulesImpl>
    implements _$$GetCapsulesImplCopyWith<$Res> {
  __$$GetCapsulesImplCopyWithImpl(
      _$GetCapsulesImpl _value, $Res Function(_$GetCapsulesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCapsules = null,
  }) {
    return _then(_$GetCapsulesImpl(
      null == allCapsules
          ? _value._allCapsules
          : allCapsules // ignore: cast_nullable_to_non_nullable
              as List<Capsule>,
    ));
  }
}

/// @nodoc

class _$GetCapsulesImpl implements _GetCapsules {
  const _$GetCapsulesImpl(final List<Capsule> allCapsules)
      : _allCapsules = allCapsules;

  final List<Capsule> _allCapsules;
  @override
  List<Capsule> get allCapsules {
    if (_allCapsules is EqualUnmodifiableListView) return _allCapsules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCapsules);
  }

  @override
  String toString() {
    return 'CapsuleState.getCapsules(allCapsules: $allCapsules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCapsulesImpl &&
            const DeepCollectionEquality()
                .equals(other._allCapsules, _allCapsules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allCapsules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCapsulesImplCopyWith<_$GetCapsulesImpl> get copyWith =>
      __$$GetCapsulesImplCopyWithImpl<_$GetCapsulesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Capsule> allCapsules) getCapsules,
  }) {
    return getCapsules(allCapsules);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Capsule> allCapsules)? getCapsules,
  }) {
    return getCapsules?.call(allCapsules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Capsule> allCapsules)? getCapsules,
    required TResult orElse(),
  }) {
    if (getCapsules != null) {
      return getCapsules(allCapsules);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CapsuleInitial value) initial,
    required TResult Function(_GetCapsules value) getCapsules,
  }) {
    return getCapsules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CapsuleInitial value)? initial,
    TResult? Function(_GetCapsules value)? getCapsules,
  }) {
    return getCapsules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CapsuleInitial value)? initial,
    TResult Function(_GetCapsules value)? getCapsules,
    required TResult orElse(),
  }) {
    if (getCapsules != null) {
      return getCapsules(this);
    }
    return orElse();
  }
}

abstract class _GetCapsules implements CapsuleState {
  const factory _GetCapsules(final List<Capsule> allCapsules) =
      _$GetCapsulesImpl;

  List<Capsule> get allCapsules;
  @JsonKey(ignore: true)
  _$$GetCapsulesImplCopyWith<_$GetCapsulesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
