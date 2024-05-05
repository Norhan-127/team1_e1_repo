import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/networking/network_exceptions.dart';
import '../data/models/launches_response.dart';
import '../data/repo/launches_repo.dart';
import 'launches_state.dart';

class LaunchesCubit extends Cubit<LaunchesState> {
  final LaunchesRepo _launchesRepo;

  LaunchesCubit(this._launchesRepo) : super(const LaunchesState.initial());

  void getAllLaunches() async {
    emit(const LaunchesState.loading());
    final response = await _launchesRepo.getAllLaunches();
    response.when(
      success: (List<LaunchesResponse> launches) => emit(
        LaunchesState.success(launches),
      ),
      fail: (NetworkExceptions networkExceptions) => emit(
        LaunchesState.error(networkExceptions),
      ),
    );
  }
}