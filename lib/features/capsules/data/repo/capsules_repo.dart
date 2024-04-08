import 'package:team1_e1/core/networking/web_services.dart';
import 'package:team1_e1/features/capsules/data/models/capsule.dart';

class CapsuleRepo{
  final WebServices webServices;
  CapsuleRepo( this.webServices);

  Future<List<Capsule>> getAllCapsules() async{
    var response = await webServices.getAllCapsules();
    return response.map((capsule) => Capsule.fromJson(capsule.toJson())).toList();
  }

}