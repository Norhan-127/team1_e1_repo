// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dragon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dragon _$DragonFromJson(Map<String, dynamic> json) => Dragon(
      heatShield: json['heatShield'] == null
          ? null
          : HeatShield.fromJson(json['heatShield'] as Map<String, dynamic>),
      heightWTrunk: json['heightWTrunk'] == null
          ? null
          : HeightWTrunk.fromJson(json['heightWTrunk'] as Map<String, dynamic>),
      diameter: json['diameter'] == null
          ? null
          : Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
      firstFlight: json['firstFlight'] as String?,
      flickrImages: (json['flickrImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      active: json['active'] as bool?,
      crewCapacity: json['crewCapacity'] as int?,
      sidewallAngleDeg: json['sidewallAngleDeg'] as int?,
      orbitDurationYr: json['orbitDurationYr'] as int?,
      dryMassKg: json['dryMassKg'] as int?,
      dryMassLb: json['dryMassLb'] as int?,
      thrusters: (json['thrusters'] as List<dynamic>?)
          ?.map((e) => Thrusters.fromJson(e as Map<String, dynamic>))
          .toList(),
      wikipedia: json['wikipedia'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$DragonToJson(Dragon instance) => <String, dynamic>{
      'heatShield': instance.heatShield,
      'heightWTrunk': instance.heightWTrunk,
      'diameter': instance.diameter,
      'firstFlight': instance.firstFlight,
      'flickrImages': instance.flickrImages,
      'name': instance.name,
      'type': instance.type,
      'active': instance.active,
      'crewCapacity': instance.crewCapacity,
      'sidewallAngleDeg': instance.sidewallAngleDeg,
      'orbitDurationYr': instance.orbitDurationYr,
      'dryMassKg': instance.dryMassKg,
      'dryMassLb': instance.dryMassLb,
      'thrusters': instance.thrusters,
      'wikipedia': instance.wikipedia,
      'description': instance.description,
      'id': instance.id,
    };

HeatShield _$HeatShieldFromJson(Map<String, dynamic> json) => HeatShield(
      material: json['material'] as String?,
      sizeMeters: (json['sizeMeters'] as num?)?.toDouble(),
      tempDegrees: json['tempDegrees'] as int?,
      devPartner: json['devPartner'] as String?,
    );

Map<String, dynamic> _$HeatShieldToJson(HeatShield instance) =>
    <String, dynamic>{
      'material': instance.material,
      'sizeMeters': instance.sizeMeters,
      'tempDegrees': instance.tempDegrees,
      'devPartner': instance.devPartner,
    };

Cargo _$CargoFromJson(Map<String, dynamic> json) => Cargo(
      solarArray: json['solarArray'] as int?,
      unpressurizedCargo: json['unpressurizedCargo'] as bool?,
    );

Map<String, dynamic> _$CargoToJson(Cargo instance) => <String, dynamic>{
      'solarArray': instance.solarArray,
      'unpressurizedCargo': instance.unpressurizedCargo,
    };

HeightWTrunk _$HeightWTrunkFromJson(Map<String, dynamic> json) => HeightWTrunk(
      meters: (json['meters'] as num?)?.toDouble(),
      feet: (json['feet'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$HeightWTrunkToJson(HeightWTrunk instance) =>
    <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

Diameter _$DiameterFromJson(Map<String, dynamic> json) => Diameter(
      meters: (json['meters'] as num?)?.toDouble(),
      feet: json['feet'] as int?,
    );

Map<String, dynamic> _$DiameterToJson(Diameter instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

Thrusters _$ThrustersFromJson(Map<String, dynamic> json) => Thrusters(
      type: json['type'] as String?,
      amount: json['amount'] as int?,
      pods: json['pods'] as int?,
      fuel1: json['fuel1'] as String?,
      fuel2: json['fuel2'] as String?,
      isp: json['isp'] as int?,
      thrust: json['thrust'] == null
          ? null
          : Thrust.fromJson(json['thrust'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ThrustersToJson(Thrusters instance) => <String, dynamic>{
      'type': instance.type,
      'amount': instance.amount,
      'pods': instance.pods,
      'fuel1': instance.fuel1,
      'fuel2': instance.fuel2,
      'isp': instance.isp,
      'thrust': instance.thrust,
    };

Thrust _$ThrustFromJson(Map<String, dynamic> json) => Thrust(
      kN: (json['kN'] as num?)?.toDouble(),
      lbf: json['lbf'] as int?,
    );

Map<String, dynamic> _$ThrustToJson(Thrust instance) => <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };
