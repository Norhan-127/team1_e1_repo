import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team1_e1/core/networking/network_exceptions.dart';

part 'rocket_state.freezed.dart';



@freezed
class RocketState<T> with _$RocketState<T> {
  const factory RocketState.initial() = _RocketInitial;
  const factory RocketState.load() = _RocketLoading;
  const factory RocketState.success(T data) = _Success<T>;
  const factory RocketState.error(NetworkExceptions networkExceptions) = _Error<T>;

}