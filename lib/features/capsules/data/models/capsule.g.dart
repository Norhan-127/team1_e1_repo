// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capsule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Capsule _$CapsuleFromJson(Map<String, dynamic> json) => Capsule(
      reuseCount: json['reuseCount'] as int?,
      waterLandings: json['waterLandings'] as int?,
      landLandings: json['landLandings'] as int?,
      lastUpdate: json['lastUpdate'] as String?,
      launches: (json['launches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      serial: json['serial'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CapsuleToJson(Capsule instance) => <String, dynamic>{
      'reuseCount': instance.reuseCount,
      'waterLandings': instance.waterLandings,
      'landLandings': instance.landLandings,
      'lastUpdate': instance.lastUpdate,
      'launches': instance.launches,
      'serial': instance.serial,
      'status': instance.status,
      'type': instance.type,
      'id': instance.id,
    };
