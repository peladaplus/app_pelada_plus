import 'package:app_pelada_plus/app/features/group/domain/entities/group.entity.dart';

extension GroupDto on GroupEntity {
  Map toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'frequency': frequency,
        'gameType': gameType,
        'selfEvaluation': selfEvaluation,
      };

  static GroupEntity fromJson(Map json) => GroupEntity(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        frequency: json['frequency'],
        gameType: json['gameType'],
        selfEvaluation: json['selfEvaluation'],
      );
}
