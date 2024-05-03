import 'package:json_annotation/json_annotation.dart';
part 'launches_response.g.dart';

@JsonSerializable()
class LaunchesResponseModel {
  final Fairings fairings;
  final Links links;
  final bool success;
  final List<Failure> failures;
  final String details;
  final String name;
  final String id;

  LaunchesResponseModel({
    required this.fairings,
    required this.links,
    required this.success,
    required this.failures,
    required this.details,
    required this.name,
    required this.id,
  });

  factory LaunchesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchesResponseModelToJson(this);
}

@JsonSerializable()
class Fairings {
  final bool reused;
  @JsonKey(name: "recovery_attempt")
  final bool recoveryAttempt;
  final bool recovered;
  final List<dynamic> ships;

  Fairings({
    required this.reused,
    required this.recoveryAttempt,
    required this.recovered,
    required this.ships,
  });

  factory Fairings.fromJson(Map<String, dynamic> json) =>
      _$FairingsFromJson(json);

  Map<String, dynamic> toJson() => _$FairingsToJson(this);
}

@JsonSerializable()
class Links {
  final Patch patch;
  final String article;
  final String wikipedia;

  Links({
    required this.patch,
    required this.article,
    required this.wikipedia,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Failure {
  final int time;
  final dynamic altitude;
  final String reason;

  Failure({required this.time, this.altitude, required this.reason});

  factory Failure.fromJson(Map<String, dynamic> json) => _$FailureFromJson(json);
  Map<String, dynamic> toJson() => _$FailureToJson(this);
}

@JsonSerializable()
class Patch {
  final String small;
  final String large;

  Patch({
    required this.small,
    required this.large,
  });

  factory Patch.fromJson(Map<String, dynamic> json) => _$PatchFromJson(json);

  Map<String, dynamic> toJson() => _$PatchToJson(this);
}




