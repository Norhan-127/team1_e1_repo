abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class GetUserDataLoading extends ProfileState {}
class GetUserDataSuccess extends ProfileState {}
class GetUserDataError extends ProfileState {}

class UpdateUserDataError extends ProfileState {}


// part 'profile_state.freezed.dart';
//
// @freezed
// class ProfileState<T> with _$ProfileState<T> {
//   const factory ProfileState.initial() = _ProfileInitial;
//   const factory ProfileState.success(T data) = _Success<T>;
//   const factory ProfileState.error(NetworkExceptions networkExceptions) = _Error<T>;
//
// }