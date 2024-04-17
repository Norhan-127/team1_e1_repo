import 'package:json_annotation/json_annotation.dart';
part 'capsule.g.dart';

@JsonSerializable()
class Capsule {
  @JsonKey(name: "reuse_count")
  int? reuseCount;
  @JsonKey(name: "water_landings")
  int? waterLandings;
  @JsonKey(name: "land_landings")
  int? landLandings;
  List<String>? launches;
  String? serial;
  String? status;
  String? type;
  String? id;

  Capsule(
      {
        this.reuseCount,
        this.waterLandings,
        this.landLandings ,
        this.launches,
        this.serial,
        this.status,
        this.type,
        this.id
      });
  factory Capsule.fromJson(Map<String, dynamic> json) => _$CapsuleFromJson(json);

  Map<String, dynamic> toJson() => _$CapsuleToJson(this);


}