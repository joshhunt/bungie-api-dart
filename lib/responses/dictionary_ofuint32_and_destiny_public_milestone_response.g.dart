// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_ofuint32_and_destiny_public_milestone_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryOfuint32AndDestinyPublicMilestoneResponse
    _$DictionaryOfuint32AndDestinyPublicMilestoneResponseFromJson(
        Map<String, dynamic> json) {
  return DictionaryOfuint32AndDestinyPublicMilestoneResponse(
      response: (json['Response'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(
            k,
            e == null
                ? null
                : DestinyPublicMilestone.fromJson(e as Map<String, dynamic>)),
      ),
      errorCode: json['ErrorCode'] as int,
      throttleSeconds: json['ThrottleSeconds'] as int,
      errorStatus: json['ErrorStatus'] as String,
      message: json['Message'] as String,
      messageData: (json['MessageData'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String);
}

Map<String, dynamic>
    _$DictionaryOfuint32AndDestinyPublicMilestoneResponseToJson(
            DictionaryOfuint32AndDestinyPublicMilestoneResponse instance) =>
        <String, dynamic>{
          'Response': instance.response,
          'ErrorCode': instance.errorCode,
          'ThrottleSeconds': instance.throttleSeconds,
          'ErrorStatus': instance.errorStatus,
          'Message': instance.message,
          'MessageData': instance.messageData,
          'DetailedErrorTrace': instance.detailedErrorTrace
        };
