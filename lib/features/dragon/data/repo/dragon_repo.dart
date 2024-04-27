import 'package:team1_e1/core/networking/web_services.dart';
import 'package:team1_e1/features/dragon/data/models/dragon_response.dart';

import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/network_exceptions.dart';

class DragonRepo{
  final WebServices webServices;
  DragonRepo(this.webServices);

  Future<ApiResult<List<Dragon>>> getAllDragons() async{
    try{
      var response = await webServices.getAllDragons();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.fail(NetworkExceptions.getDioException(error));
    }
  }

}