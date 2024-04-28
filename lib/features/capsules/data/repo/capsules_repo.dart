import 'package:team1_e1/core/networking/web_services.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/network_exceptions.dart';
import '../models/capsules_response.dart';

class CapsuleRepo{
  final WebServices webServices;
  CapsuleRepo(this.webServices);

  Future<ApiResult<List<Capsule>>> getAllCapsules() async{
    try{
      var response = await webServices.getAllCapsules();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.fail(NetworkExceptions.getDioException(error));
    }
  }

}