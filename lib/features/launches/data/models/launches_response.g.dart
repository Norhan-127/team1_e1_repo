// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchesResponseModel _$LaunchesResponseModelFromJson(
        Map<String, dynamic> json) =>
    LaunchesResponseModel(
      fairings: Fairings.fromJson(json['fairings'] as Map<String, dynamic>),
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
      success: json['success'] as bool,
      failures: (json['failures'] as List<dynamic>)
          .map((e) => Failure.fromJson(e as Map<String, dynamic>))
          .toList(),
      details: json['details'] as String,
      name: json['name'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$LaunchesResponseModelToJson(
        LaunchesResponseModel instance) =>
    <String, dynamic>{
      'fairings': instance.fairings,
      'links': instance.links,
      'success': instance.success,
      'failures': instance.failures,
      'details': instance.details,
      'name': instance.name,
      'id': instance.id,
    };

Fairings _$FairingsFromJson(Map<String, dynamic> json) => Fairings(
      reused: json['reused'] as bool,
      recoveryAttempt: json['recovery_attempt'] as bool,
      recovered: json['recovered'] as bool,
      ships: json['ships'] as List<dynamic>,
    );

Map<String, dynamic> _$FairingsToJson(Fairings instance) => <String, dynamic>{
      'reused': instance.reused,
      'recovery_attempt': instance.recoveryAttempt,
      'recovered': instance.recovered,
      'ships': instance.ships,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      patch: Patch.fromJson(json['patch'] as Map<String, dynamic>),
      article: json['article'] as String,
      wikipedia: json['wikipedia'] as String,
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'patch': instance.patch,
      'article': instance.article,
      'wikipedia': instance.wikipedia,
    };

Failure _$FailureFromJson(Map<String, dynamic> json) => Failure(
      time: json['time'] as int,
      altitude: json['altitude'],
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$FailureToJson(Failure instance) => <String, dynamic>{
      'time': instance.time,
      'altitude': instance.altitude,
      'reason': instance.reason,
    };

Patch _$PatchFromJson(Map<String, dynamic> json) => Patch(
      small: json['small'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$PatchToJson(Patch instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };
