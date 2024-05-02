import 'package:bloc/bloc.dart';
import 'package:team1_e1/core/networking/network_exceptions.dart';
import '../data/models/capsules_response.dart';
import '../data/repo/capsules_repo.dart';
import 'capsule_state.dart';

class CapsuleCubit extends Cubit<CapsuleState> {
  final CapsuleRepo capsuleRepo;

  CapsuleCubit(this.capsuleRepo) : super(const CapsuleState.initial());


  void getAllCapsules() async {
    var response = await capsuleRepo.getAllCapsules();

    response.when(
      success: (List<Capsule> capsule) => emit(CapsuleState.success(capsule)),
      fail: (NetworkExceptions networkExceptions) =>
          emit(CapsuleState.error(networkExceptions)),
    );
  }
}