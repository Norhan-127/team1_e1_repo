import 'package:json_annotation/json_annotation.dart';
part 'capsule.g.dart';

@JsonSerializable()
class Capsule {
  int? reuseCount;
  int? waterLandings;
  int? landLandings;
  String? lastUpdate;
  List<String>? launches;
  String? serial;
  String? status;
  String? type;
  String? id;

  Capsule(
      {this.reuseCount,
        this.waterLandings,
        this.landLandings,
        this.lastUpdate,
        this.launches,
        this.serial,
        this.status,
        this.type,
        this.id});
  /// factory.
  factory Capsule.fromJson(Map<String, dynamic> json) => _$CapsuleFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CapsuleToJson(this);


}