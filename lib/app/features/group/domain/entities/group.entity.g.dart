// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupEntity _$GroupEntityFromJson(Map<String, dynamic> json) => GroupEntity(
      id: json['id'] as int?,
      name: json['name'] as String,
      image: json['image'] as String,
      frequency: $enumDecode(_$FrequencyEnumMap, json['frequency']),
      days: (json['days'] as List<dynamic>)
          .map((e) => $enumDecode(_$DayEnumMap, e))
          .toList(),
      modality: $enumDecode(_$ModalityEnumMap, json['modality']),
      assessment: $enumDecode(_$AssessmentEnumMap, json['assessment']),
    );

Map<String, dynamic> _$GroupEntityToJson(GroupEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'frequency': _$FrequencyEnumMap[instance.frequency],
      'days': instance.days.map((e) => _$DayEnumMap[e]).toList(),
      'modality': _$ModalityEnumMap[instance.modality],
      'assessment': _$AssessmentEnumMap[instance.assessment],
    };

const _$FrequencyEnumMap = {
  Frequency.monthly: 'monthly',
  Frequency.biweekly: 'biweekly',
  Frequency.weekly: 'weekly',
  Frequency.none: 'none',
};

const _$DayEnumMap = {
  Day.monday: 'monday',
  Day.tuesday: 'tuesday',
  Day.wednesday: 'wednesday',
  Day.thursday: 'thursday',
  Day.friday: 'friday',
  Day.saturday: 'saturday',
  Day.sunday: 'sunday',
};

const _$ModalityEnumMap = {
  Modality.soccer: 'soccer',
  Modality.indoorSoccer: 'indoorSoccer',
  Modality.society: 'society',
  Modality.none: 'none',
};

const _$AssessmentEnumMap = {
  Assessment.selfEvaluation: 'selfEvaluation',
  Assessment.moderator: 'moderator',
  Assessment.none: 'none',
};
