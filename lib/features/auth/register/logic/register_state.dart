part of 'register_cubit.dart';

abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}
class RegisterSuccess extends RegisterState {}
class RegisterError extends RegisterState {}

class CreateUserLoading extends RegisterState {}
class CreateUserSuccess extends RegisterState {}
class CreateUserError extends RegisterState {}

