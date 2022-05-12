// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupEntity _$GroupEntityFromJson(Map<String, dynamic> json) => GroupEntity(
      id: json['id'] as int?,
      name: json['name'] as String,
      image: json['image'] as String,
      frequency: json['frequency'] as String,
      gameType: $enumDecode(_$GameTypeEnumMap, json['gameType']),
      selfEvaluation: json['selfEvaluation'] as bool,
    );

Map<String, dynamic> _$GroupEntityToJson(GroupEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'frequency': instance.frequency,
      'gameType': _$GameTypeEnumMap[instance.gameType],
      'selfEvaluation': instance.selfEvaluation,
    };

const _$GameTypeEnumMap = {
  GameType.soccer: 'soccer',
  GameType.indoorSoccer: 'indoorSoccer',
  GameType.society: 'society',
};
