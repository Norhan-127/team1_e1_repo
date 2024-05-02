import 'package:bloc/bloc.dart';
import 'package:team1_e1/core/networking/network_exceptions.dart';
import 'package:team1_e1/features/dragon/data/models/dragon_response.dart';
import 'package:team1_e1/features/dragon/data/repo/dragon_repo.dart';
import 'dragon_state.dart';

class DragonCubit extends Cubit<DragonState> {
  final DragonRepo capsuleRepo;

  DragonCubit(this.capsuleRepo) : super(const DragonState.initial());


  void getAllCapsules() async {
    var response = await capsuleRepo.getAllDragons();

    response.when(
      success: (List<Dragon> dragon) => emit(DragonState.success(dragon)),
      fail: (NetworkExceptions networkExceptions) =>
          emit(DragonState.error(networkExceptions)),
    );
  }
}