import 'package:bloc/bloc.dart';
import '../data/repo/capsules_repo.dart';
import 'capsule_state.dart';

class CapsuleCubit extends Cubit<CapsuleState> {
  final CapsuleRepo cap_repo;
  CapsuleCubit(this.cap_repo) : super(const CapsuleState.initial());


  int index = 0;



  void GetAllCapsules(){
    cap_repo.getAllCapsules().then((capsules) => {
      emit(CapsuleState.getCapsules(capsules)),
    });

  }
}
