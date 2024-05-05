import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team1_e1/core/networking/network_exceptions.dart';
part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T>{
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.fail(NetworkExceptions networkExceptions) = Failure<T>;
}