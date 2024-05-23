import 'package:team1_e1/core/networking/web_services.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/network_exceptions.dart';
import '../models/crew_response.dart';

class CrewRepo{
  final WebServices webServices;
  CrewRepo(this.webServices);

  Future<ApiResult<List<Crew>>> getAllCrew() async{
    try{
      var response = await webServices.getAllCrew();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.fail(NetworkExceptions.getDioException(error));
    }
  }

}