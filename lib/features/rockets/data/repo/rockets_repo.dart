import 'package:team1_e1/core/networking/web_services.dart';
import 'package:team1_e1/features/rockets/data/models/rockets_response.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/network_exceptions.dart';


class RocketRepo{
  final WebServices webServices;
  RocketRepo(this.webServices);

  Future<ApiResult<List<Rocket>>> getAllRockets() async{
    try{
      var response = await webServices.getAllRockets();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.fail(NetworkExceptions.getDioException(error));
    }
  }

}