enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

extension ExtensionDay on Day {
  String toValue() {
    Map map = <Day, String>{
      Day.monday: 'Segunda',
      Day.tuesday: 'Terça',
      Day.wednesday: 'Quarta',
      Day.thursday: 'Quinta',
      Day.friday: 'Sexta',
      Day.saturday: 'Sábado',
      Day.sunday: 'Domingo',
    };

    return map[this];
  }
}
