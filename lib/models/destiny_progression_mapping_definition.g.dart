// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_mapping_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionMappingDefinition
    _$DestinyProgressionMappingDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyProgressionMappingDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..displayUnits = json['displayUnits'] as String
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyProgressionMappingDefinitionToJson(
        DestinyProgressionMappingDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'displayUnits': instance.displayUnits,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted
    };
