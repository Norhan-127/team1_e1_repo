import 'package:team1_e1/core/networking/web_services.dart';
import 'package:team1_e1/features/launches/data/models/launches_response.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/network_exceptions.dart';

class LaunchesRepo {
  final WebServices webServices;

  LaunchesRepo(this.webServices);

  Future<ApiResult<List<LaunchesResponseModel>>> getAllLaunches() async {
    try {
      var response = await webServices.getAllLaunches();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.fail(NetworkExceptions.getDioException(error));
    }
  }
}
