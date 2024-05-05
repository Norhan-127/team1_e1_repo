// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rockets_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rocket _$RocketFromJson(Map<String, dynamic> json) => Rocket(
      flickrImages: (json['flickr_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      active: json['active'] as bool?,
      stages: json['stages'] as int?,
      boosters: json['boosters'] as int?,
      costPerLaunch: json['costPerLaunch'] as int?,
      successRatePct: json['successRatePct'] as int?,
      firstFlight: json['firstFlight'] as String?,
      country: json['country'] as String?,
      company: json['company'] as String?,
      wikipedia: json['wikipedia'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$RocketToJson(Rocket instance) => <String, dynamic>{
      'flickr_images': instance.flickrImages,
      'name': instance.name,
      'type': instance.type,
      'active': instance.active,
      'stages': instance.stages,
      'boosters': instance.boosters,
      'costPerLaunch': instance.costPerLaunch,
      'successRatePct': instance.successRatePct,
      'firstFlight': instance.firstFlight,
      'country': instance.country,
      'company': instance.company,
      'wikipedia': instance.wikipedia,
      'description': instance.description,
      'id': instance.id,
    };
