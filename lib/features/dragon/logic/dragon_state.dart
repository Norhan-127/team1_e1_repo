import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team1_e1/core/networking/network_exceptions.dart';
part 'dragon_state.freezed.dart';



@freezed
class DragonState<T> with _$DragonState<T> {
  const factory DragonState.initial() = _DragonInitial;
  const factory DragonState.success(T data) = _Success<T>;
  const factory DragonState.error(NetworkExceptions networkExceptions) = _Error<T>;

}