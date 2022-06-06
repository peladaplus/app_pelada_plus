import 'package:app_pelada_plus/app/core/enums/frequency.enum.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/enums/assessment.enum.dart';
import '../../../../core/enums/days.enum.dart';
import '../../../../core/enums/modality.enum.dart';

part 'group.entity.g.dart';

@JsonSerializable()
class GroupEntity {
  const GroupEntity({
    this.id,
    required this.name,
    required this.image,
    required this.frequency,
    required this.days,
    required this.modality,
    required this.assessment,
  });

  final int? id;
  final String name;
  final String image;
  final Frequency frequency;
  final List<Day> days;
  final Modality modality;
  final Assessment assessment;

  factory GroupEntity.fromJson(Map<String, dynamic> json) =>
      _$GroupEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GroupEntityToJson(this);
}
