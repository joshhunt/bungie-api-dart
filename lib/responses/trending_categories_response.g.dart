// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingCategoriesResponse _$TrendingCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return TrendingCategoriesResponse(
      response: json['Response'] == null
          ? null
          : TrendingCategories.fromJson(
              json['Response'] as Map<String, dynamic>),
      errorCode: json['ErrorCode'] as int,
      throttleSeconds: json['ThrottleSeconds'] as int,
      errorStatus: json['ErrorStatus'] as String,
      message: json['Message'] as String,
      messageData: (json['MessageData'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String);
}

Map<String, dynamic> _$TrendingCategoriesResponseToJson(
        TrendingCategoriesResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': instance.errorCode,
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace
    };
