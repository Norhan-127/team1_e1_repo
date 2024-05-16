import 'package:json_annotation/json_annotation.dart';
part 'rockets_response.g.dart';

@JsonSerializable()
class Rocket {
  @JsonKey(name: "flickr_images")
  List<String>? flickrImages;
  String? name;
  String? type;
  bool? active;
  int? stages;
  int? boosters;
  @JsonKey(name: "cost_per_launch")
  int? costPerLaunch;
  @JsonKey(name: "success_rate_pct")
  int? successRatePct;
  @JsonKey(name: "first_flight")
  String? firstFlight;
  String? country;
  String? company;
  String? wikipedia;
  String? description;
  String? id;

  Rocket(
      {
        this.flickrImages,
        this.name,
        this.type,
        this.active,
        this.stages,
        this.boosters,
        this.costPerLaunch,
        this.successRatePct,
        this.firstFlight,
        this.country,
        this.company,
        this.wikipedia,
        this.description,
        this.id});


  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);
  Map<String, dynamic> toJson() => _$RocketToJson(this);


}


