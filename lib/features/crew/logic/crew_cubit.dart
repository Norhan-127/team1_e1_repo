import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team1_e1/core/networking/network_exceptions.dart';
import 'package:team1_e1/features/crew/data/models/crew_response.dart';
import '../data/repo/crew_repo.dart';
import 'crew_state.dart';

class CrewCubit extends Cubit<CrewState> {
  final CrewRepo crewRepo;

  CrewCubit(this.crewRepo) : super(const CrewState.initial());


  void getAllCrew() async {
    var response = await crewRepo.getAllCrew();

    response.when(
      success: (List<Crew> capsule) => emit(CrewState.success(capsule)),
      fail: (NetworkExceptions networkExceptions) =>
          emit(CrewState.error(networkExceptions)),
    );
  }
}