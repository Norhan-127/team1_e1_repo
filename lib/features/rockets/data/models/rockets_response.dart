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
  int? costPerLaunch;
  int? successRatePct;
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
        @JsonKey(name: "cost_per_launch")
        this.costPerLaunch,
        @JsonKey(name: "success_rate_pct")
        this.successRatePct,
        @JsonKey(name: "first_flight")
        this.firstFlight,
        this.country,
        this.company,
        this.wikipedia,
        this.description,
        this.id});


  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);
  Map<String, dynamic> toJson() => _$RocketToJson(this);


}





// class Rocket {
//   int? id;
//   bool? active;
//   int? stages;
//   int? boosters;
//   @JsonKey(name: "cost_per_launch")
//   int? costPerLaunch;
//   @JsonKey(name: "success_rate_pct")
//   int? successRatePct;
//   @JsonKey(name: "first_flight")
//   String? firstFlight;
//   String? country;
//   String? company;
//   @JsonKey(name: "flickr_images")
//   List<String>? flickrImages;
//   String? wikipedia;
//   String? description;
//   @JsonKey(name: "name")
//   String? rocketName;
//   @JsonKey(name: "type")
//   String? rocketType;
//
//   Rocket(
//       {this.id,
//         this.active,
//         this.stages,
//         this.boosters,
//         this.costPerLaunch,
//         this.successRatePct,
//         this.firstFlight,
//         this.country,
//         this.company,
//         this.flickrImages,
//         this.wikipedia,
//         this.description,
//         this.rocketName,
//         this.rocketType});
//
//   factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);
//
//   Map<String, dynamic> toJson() => _$RocketToJson(this);
//
// }

