// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupQuery _$GroupQueryFromJson(Map<String, dynamic> json) {
  return GroupQuery()
    ..name = json['name'] as String
    ..groupType = json['groupType'] as int
    ..creationDate = json['creationDate'] as int
    ..sortBy = json['sortBy'] as int
    ..groupMemberCountFilter = json['groupMemberCountFilter'] as int
    ..localeFilter = json['localeFilter'] as String
    ..tagText = json['tagText'] as String
    ..itemsPerPage = json['itemsPerPage'] as int
    ..currentPage = json['currentPage'] as int
    ..requestContinuationToken = json['requestContinuationToken'] as String;
}

Map<String, dynamic> _$GroupQueryToJson(GroupQuery instance) =>
    <String, dynamic>{
      'name': instance.name,
      'groupType': instance.groupType,
      'creationDate': instance.creationDate,
      'sortBy': instance.sortBy,
      'groupMemberCountFilter': instance.groupMemberCountFilter,
      'localeFilter': instance.localeFilter,
      'tagText': instance.tagText,
      'itemsPerPage': instance.itemsPerPage,
      'currentPage': instance.currentPage,
      'requestContinuationToken': instance.requestContinuationToken
    };
