part of 'capsule_cubit.dart';

@immutable
sealed class CapsuleState {}

final class CapsuleInitial extends CapsuleState {}

class GetCapsules extends CapsuleState{
  final List<Capsule> allCapsules;
  GetCapsules({required this.allCapsules});
}
