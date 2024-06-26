import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:team1_e1/core/networking/api_constants.dart';
import 'package:team1_e1/features/dragon/data/models/dragon_response.dart';
import 'package:team1_e1/features/rockets/data/models/rockets_response.dart';
import '../../features/capsules/data/models/capsules_response.dart';
import '../../features/crew/data/models/crew_response.dart';
import '../../features/launches/data/models/launches_response.dart';
part 'web_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class WebServices{
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET(ApiConstants.dragons)
  Future<List<Dragon>> getAllDragons();

  @GET(ApiConstants.capsules)
  Future<List<Capsule>> getAllCapsules();


  @GET(ApiConstants.crew)
  Future<List<Crew>> getAllCrew();

  @GET(ApiConstants.rockets)
  Future<List<Rocket>> getAllRockets();
  
  
  @GET(ApiConstants.launches)
  Future<List<LaunchesResponse>> getAllLaunches();


}