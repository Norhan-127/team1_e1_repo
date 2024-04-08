import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:team1_e1/core/networking/api_constants.dart';
import 'package:team1_e1/features/capsules/data/models/capsule.dart';
part 'web_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class WebServices{
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET(ApiConstants.capsules)
  Future<List<Capsule>> getAllCapsules();


}