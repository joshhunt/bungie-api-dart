// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_ban_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupBanRequest _$GroupBanRequestFromJson(Map<String, dynamic> json) {
  return GroupBanRequest()
    ..comment = json['comment'] as String
    ..length = json['length'] as int;
}

Map<String, dynamic> _$GroupBanRequestToJson(GroupBanRequest instance) =>
    <String, dynamic>{'comment': instance.comment, 'length': instance.length};
