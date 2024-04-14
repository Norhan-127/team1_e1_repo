import 'package:json_annotation/json_annotation.dart';
part 'capsule.g.dart';

@JsonSerializable()
class Capsule {
  int? reuse_count;
  int? water_landings;
  int? land_landings;
  List<String>? launches;
  String? serial;
  String? status;
  String? type;
  String? id;

  Capsule(
      {
        this.reuse_count,
        this.water_landings,
        this.land_landings ,
        this.launches,
        this.serial,
        this.status,
        this.type,
        this.id
      });
  factory Capsule.fromJson(Map<String, dynamic> json) => _$CapsuleFromJson(json);

  Map<String, dynamic> toJson() => _$CapsuleToJson(this);


}