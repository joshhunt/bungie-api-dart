// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsage _$ApiUsageFromJson(Map<String, dynamic> json) {
  return ApiUsage()
    ..range = json['range'] == null
        ? null
        : DateRange.fromJson(json['range'] as Map<String, dynamic>)
    ..apiCalls = (json['apiCalls'] as List)
        ?.map((e) =>
            e == null ? null : Series.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..throttledRequests = (json['throttledRequests'] as List)
        ?.map((e) =>
            e == null ? null : Series.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ApiUsageToJson(ApiUsage instance) => <String, dynamic>{
      'range': instance.range,
      'apiCalls': instance.apiCalls,
      'throttledRequests': instance.throttledRequests
    };