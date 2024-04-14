// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capsule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Capsule _$CapsuleFromJson(Map<String, dynamic> json) => Capsule(
      reuse_count: json['reuse_count'] as int?,
      water_landings: json['water_landings'] as int?,
      land_landings: json['land_landings'] as int?,
      launches: (json['launches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      serial: json['serial'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CapsuleToJson(Capsule instance) => <String, dynamic>{
      'reuse_count': instance.reuse_count,
      'water_landings': instance.water_landings,
      'land_landings': instance.land_landings,
      'launches': instance.launches,
      'serial': instance.serial,
      'status': instance.status,
      'type': instance.type,
      'id': instance.id,
    };
