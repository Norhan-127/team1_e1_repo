import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/networking/network_exceptions.dart';
import '../data/models/launches_response.dart';
import '../data/repo/launches_repo.dart';
import 'launches_state.dart';

class LaunchesCubit extends Cubit<LaunchesState> {
  final LaunchesRepo launchesRepo;

  LaunchesCubit(this.launchesRepo) : super(const LaunchesState.initial());

  void getAllLaunches() async {
    var response = await launchesRepo.getAllLaunches();
    response.when(
      success: (List<LaunchesResponseModel> launches) => emit(
        LaunchesState.success(launches),
      ),
      fail: (NetworkExceptions networkExceptions) => emit(
        LaunchesState.error(networkExceptions),
      ),
    );
  }
}
