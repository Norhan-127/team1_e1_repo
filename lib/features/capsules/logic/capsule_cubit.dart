import 'package:bloc/bloc.dart';
import '../data/repo/capsules_repo.dart';
import 'capsule_state.dart';

class CapsuleCubit extends Cubit<CapsuleState> {
  final CapsuleRepo cap_repo;
  CapsuleCubit(this.cap_repo) : super(const CapsuleState.initial());





  void getAllCapsules()async{
    var response = await capsuleRepo.getAllCapsules();

    response.when(
      success: (List<Capsule> capsule) => emit(CapsuleState.success(capsule)),
      fail: (NetworkExceptions networkExceptions) => emit(CapsuleState.error(networkExceptions)),
    );



  }
}
