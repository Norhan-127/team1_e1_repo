import 'package:team1_e1/core/networking/web_services.dart';
import 'package:team1_e1/features/capsules/data/models/capsule.dart';

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