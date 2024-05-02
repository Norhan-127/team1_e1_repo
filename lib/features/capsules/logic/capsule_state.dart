import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team1_e1/core/networking/network_exceptions.dart';

part 'capsule_state.freezed.dart';



@freezed
class CapsuleState<T> with _$CapsuleState<T> {
  const factory CapsuleState.initial() = _CapsuleInitial;
  const factory CapsuleState.success(T data) = _Success<T>;
  const factory CapsuleState.error(NetworkExceptions networkExceptions) = _Error<T>;

}