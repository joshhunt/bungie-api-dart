// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_component_set_ofuint32.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemComponentSetOfuint32 _$DestinyItemComponentSetOfuint32FromJson(
    Map<String, dynamic> json) {
  return DestinyItemComponentSetOfuint32()
    ..instances = json['instances'] == null
        ? null
        : DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent.fromJson(
            json['instances'] as Map<String, dynamic>)
    ..perks = json['perks'] == null
        ? null
        : DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent.fromJson(
            json['perks'] as Map<String, dynamic>)
    ..renderData = json['renderData'] == null
        ? null
        : DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent.fromJson(
            json['renderData'] as Map<String, dynamic>)
    ..stats = json['stats'] == null
        ? null
        : DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent.fromJson(
            json['stats'] as Map<String, dynamic>)
    ..sockets = json['sockets'] == null
        ? null
        : DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent.fromJson(
            json['sockets'] as Map<String, dynamic>)
    ..talentGrids = json['talentGrids'] == null
        ? null
        : DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent.fromJson(json['talentGrids'] as Map<String, dynamic>)
    ..plugStates = json['plugStates'] == null ? null : DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromJson(json['plugStates'] as Map<String, dynamic>)
    ..objectives = json['objectives'] == null ? null : DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent.fromJson(json['objectives'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DestinyItemComponentSetOfuint32ToJson(
        DestinyItemComponentSetOfuint32 instance) =>
    <String, dynamic>{
      'instances': instance.instances,
      'perks': instance.perks,
      'renderData': instance.renderData,
      'stats': instance.stats,
      'sockets': instance.sockets,
      'talentGrids': instance.talentGrids,
      'plugStates': instance.plugStates,
      'objectives': instance.objectives
    };
