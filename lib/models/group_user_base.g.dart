// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_user_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupUserBase _$GroupUserBaseFromJson(Map<String, dynamic> json) {
  return GroupUserBase()
    ..groupId = json['groupId'] as String
    ..destinyUserInfo = json['destinyUserInfo'] == null
        ? null
        : UserInfoCard.fromJson(json['destinyUserInfo'] as Map<String, dynamic>)
    ..bungieNetUserInfo = json['bungieNetUserInfo'] == null
        ? null
        : UserInfoCard.fromJson(
            json['bungieNetUserInfo'] as Map<String, dynamic>)
    ..joinDate = json['joinDate'] as String;
}

Map<String, dynamic> _$GroupUserBaseToJson(GroupUserBase instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'destinyUserInfo': instance.destinyUserInfo,
      'bungieNetUserInfo': instance.bungieNetUserInfo,
      'joinDate': instance.joinDate
    };
