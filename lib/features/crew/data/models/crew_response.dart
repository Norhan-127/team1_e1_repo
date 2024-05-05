import 'package:json_annotation/json_annotation.dart';
part 'crew_response.g.dart';

@JsonSerializable()
class Crew {
  String? name;
  String? agency;
  String? image;
  String? wikipedia;
  List<String>? launches;
  String? status;
  String? id;
  Crew(
      {this.name,
        this.agency,
        this.image,
        this.wikipedia,
        this.launches,
        this.status,
        this.id});
  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);

  Map<String, dynamic> toJson() => _$CrewToJson(this);


}
