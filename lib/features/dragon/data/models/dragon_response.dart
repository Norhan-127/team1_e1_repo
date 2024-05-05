import 'package:json_annotation/json_annotation.dart';
part 'dragon_response.g.dart';

@JsonSerializable()
class Dragon {
  @JsonKey(name: 'heat_shield')
  HeatShield? heatShield;
  @JsonKey(name: 'height_w_trunk')
  HeightWTrunk? heightWTrunk;
  Diameter? diameter;
  @JsonKey(name: 'first_flight')
  String? firstFlight;
  @JsonKey(name: 'flickr_images')
  List<String>? flickrImages;
  String? name;
  String? type;
  bool? active;
  List<Thrusters>? thrusters;
  String? description;
  String? id;

  Dragon(
      {this.heatShield,
        this.heightWTrunk,
        this.diameter,
        this.firstFlight,
        this.flickrImages,
        this.name,
        this.type,
        this.active,
        this.thrusters,
        this.description,
        this.id});
  factory Dragon.fromJson(Map<String, dynamic> json) => _$DragonFromJson(json);

  Map<String, dynamic> toJson() => _$DragonToJson(this);


}

@JsonSerializable()
class HeatShield {
  String? material;
  double? sizeMeters;
  int? tempDegrees;
  String? devPartner;

  HeatShield(
      {this.material, this.sizeMeters, this.tempDegrees, this.devPartner});

  factory HeatShield.fromJson(Map<String, dynamic> json) => _$HeatShieldFromJson(json);

  Map<String, dynamic> toJson() => _$HeatShieldToJson(this);
}

@JsonSerializable()
class Cargo {
  int? solarArray;
  bool? unpressurizedCargo;

  Cargo({this.solarArray, this.unpressurizedCargo});

  factory Cargo.fromJson(Map<String, dynamic> json) => _$CargoFromJson(json);

  Map<String, dynamic> toJson() => _$CargoToJson(this);
}

@JsonSerializable()
class HeightWTrunk {
  double? meters;
  double? feet;

  HeightWTrunk({this.meters, this.feet});

  factory HeightWTrunk.fromJson(Map<String, dynamic> json) => _$HeightWTrunkFromJson(json);

  Map<String, dynamic> toJson() => _$HeightWTrunkToJson(this);
}

@JsonSerializable()
class Diameter {
  double? meters;
  int? feet;

  Diameter({this.meters, this.feet});

  factory Diameter.fromJson(Map<String, dynamic> json) => _$DiameterFromJson(json);

  Map<String, dynamic> toJson() => _$DiameterToJson(this);
}

@JsonSerializable()
class Thrusters {
  String? type;
  int? amount;
  int? pods;
  String? fuel1;
  String? fuel2;
  int? isp;
  Thrust? thrust;

  Thrusters(
      {this.type,
        this.amount,
        this.pods,
        this.fuel1,
        this.fuel2,
        this.isp,
        this.thrust});

  factory Thrusters.fromJson(Map<String, dynamic> json) => _$ThrustersFromJson(json);

  Map<String, dynamic> toJson() => _$ThrustersToJson(this);

}

@JsonSerializable()
class Thrust {
  double? kN;
  int? lbf;

  Thrust({this.kN, this.lbf});

  factory Thrust.fromJson(Map<String, dynamic> json) => _$ThrustFromJson(json);

  Map<String, dynamic> toJson() => _$ThrustToJson(this);
}