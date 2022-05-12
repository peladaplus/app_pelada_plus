import 'package:json_annotation/json_annotation.dart';

part 'group.entity.g.dart';

@JsonSerializable()
class GroupEntity {
  const GroupEntity({
    this.id,
    required this.name,
    required this.image,
    required this.frequency,
    required this.gameType,
    required this.selfEvaluation,
  });

  final int? id;
  final String name;
  final String image;
  final String frequency;
  final GameType gameType;
  final bool selfEvaluation;

  factory GroupEntity.fromJson(Map<String, dynamic> json) =>
      _$GroupEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GroupEntityToJson(this);
}

enum GameType {
  soccer,
  indoorSoccer,
  society,
}
