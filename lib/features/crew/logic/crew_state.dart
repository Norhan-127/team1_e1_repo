import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team1_e1/core/networking/network_exceptions.dart';

part 'crew_state.freezed.dart';



@freezed
class CrewState<T> with _$CrewState<T> {
  const factory CrewState.initial() = _CrewInitial;
  const factory CrewState.success(T data) = _Success<T>;
  const factory CrewState.error(NetworkExceptions networkExceptions) = _Error<T>;

}