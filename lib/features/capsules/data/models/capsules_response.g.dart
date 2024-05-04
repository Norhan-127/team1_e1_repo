// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capsules_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Capsule _$CapsuleFromJson(Map<String, dynamic> json) => Capsule(
      reuseCount: json['reuse_count'] as int?,
      waterLandings: json['water_landings'] as int?,
      landLandings: json['land_landings'] as int?,
      launches: (json['launches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      serial: json['serial'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CapsuleToJson(Capsule instance) => <String, dynamic>{
      'reuse_count': instance.reuseCount,
      'water_landings': instance.waterLandings,
      'land_landings': instance.landLandings,
      'launches': instance.launches,
      'serial': instance.serial,
      'status': instance.status,
      'type': instance.type,
      'id': instance.id,
    };
