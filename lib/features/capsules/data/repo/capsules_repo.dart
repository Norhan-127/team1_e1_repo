import 'package:team1_e1/core/networking/web_services.dart';
import 'package:team1_e1/features/capsules/data/models/capsule.dart';

class CapsuleRepo{
  final WebServices webServices;
  CapsuleRepo( this.webServices);

  Future<List<Capsule>> getAllCapsules() async{
    var r = await webServices.getAllCapsules();
    return r.map((capusle) => Capsule.fromJson(capusle.toJson())).toList();
  }

}