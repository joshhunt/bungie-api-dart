// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_equip_item_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEquipItemResult _$DestinyEquipItemResultFromJson(
    Map<String, dynamic> json) {
  return DestinyEquipItemResult()
    ..itemInstanceId = json['itemInstanceId'] as String
    ..equipStatus = json['equipStatus'] as int;
}

Map<String, dynamic> _$DestinyEquipItemResultToJson(
        DestinyEquipItemResult instance) =>
    <String, dynamic>{
      'itemInstanceId': instance.itemInstanceId,
      'equipStatus': instance.equipStatus
    };
