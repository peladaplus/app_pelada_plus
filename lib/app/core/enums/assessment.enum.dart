enum Assessment {
  selfEvaluation,
  moderator,
  none,
}

extension ExtensionAssessment on Assessment {
  String toValue() {
    Map map = <Assessment, String>{
      Assessment.selfEvaluation: 'Autoavaliação',
      Assessment.moderator: 'Moderador',
    };

    return map[this];
  }
}
