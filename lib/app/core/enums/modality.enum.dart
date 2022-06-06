enum Modality {
  soccer,
  indoorSoccer,
  society,
  none,
}

extension ExtensionModality on Modality {
  String toValue() {
    Map map = <Modality, String>{
      Modality.soccer: 'Futebol',
      Modality.indoorSoccer: 'Futsal',
      Modality.society: 'Society',
    };

    return map[this];
  }
}
