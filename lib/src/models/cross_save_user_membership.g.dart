// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cross_save_user_membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CrossSaveUserMembership _$CrossSaveUserMembershipFromJson(
    Map<String, dynamic> json) {
  return CrossSaveUserMembership()
    ..crossSaveOverride = json['crossSaveOverride'] as int
    ..applicableMembershipTypes = (json['applicableMembershipTypes'] as List)
        ?.map((e) => e as int)
        ?.toList()
    ..isPublic = json['isPublic'] as bool
    ..membershipType = json['membershipType'] as int
    ..membershipId = json['membershipId'] as String
    ..displayName = json['displayName'] as String;
}

Map<String, dynamic> _$CrossSaveUserMembershipToJson(
        CrossSaveUserMembership instance) =>
    <String, dynamic>{
      'crossSaveOverride': instance.crossSaveOverride,
      'applicableMembershipTypes': instance.applicableMembershipTypes,
      'isPublic': instance.isPublic,
      'membershipType': instance.membershipType,
      'membershipId': instance.membershipId,
      'displayName': instance.displayName
    };