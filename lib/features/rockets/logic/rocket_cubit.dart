import 'package:bloc/bloc.dart';
import 'package:team1_e1/core/networking/network_exceptions.dart';
import 'package:team1_e1/features/rockets/data/models/rockets_response.dart';
import 'package:team1_e1/features/rockets/data/repo/rockets_repo.dart';
import 'package:team1_e1/features/rockets/logic/rocket_state.dart';


class RocketCubit extends Cubit<RocketState> {
  final RocketRepo rocketRepo;

  RocketCubit(this.rocketRepo) : super(const RocketState.initial());


  void getAllRockets() async {
    emit(RocketState.load());
    var response = await rocketRepo.getAllRockets();

    response.when(
      success: (List<Rocket> rocket) => emit(RocketState.success(rocket)),
      fail: (NetworkExceptions networkExceptions) =>
          emit(RocketState.error(networkExceptions)),
    );
  }
}