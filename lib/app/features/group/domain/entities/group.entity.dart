class GroupEntity {
  GroupEntity({
    required this.name,
    required this.image,
    required this.frequency,
    required this.gameType,
    required this.selfEvaluation,
  });

  final String name;
  final String image;
  final String frequency;
  final GameType gameType;
  final bool selfEvaluation;
}

enum GameType {
  soccer,
  indoorSoccer,
  society,
}
