import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/networking/network_exceptions.dart';

part 'launches_state.freezed.dart';

@freezed
class LaunchesState<T> with _$LaunchesState<T> {
  const factory LaunchesState.initial() = _LaunchesInitial;
  const factory LaunchesState.loading() = LaunchesLaodingState;
  const factory LaunchesState.success(T data) = LaunchesSuccessState<T>;
  const factory LaunchesState.error(NetworkExceptions networkExceptions) = LaunchesErrorState<T>;
}