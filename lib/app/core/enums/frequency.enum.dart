enum Frequency {
  monthly,
  biweekly,
  weekly,
  none,
}

extension ExtensionFrequency on Frequency {
  String toValue() {
    Map map = <Frequency, String>{
      Frequency.monthly: 'Mensal',
      Frequency.biweekly: 'Quinzenal',
      Frequency.weekly: 'Semanal',
    };

    return map[this];
  }
}
