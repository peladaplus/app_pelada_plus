// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegistrationStore on RegistrationStoreBase, Store {
  late final _$nameAtom =
      Atom(name: 'RegistrationStoreBase.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$modalityAtom =
      Atom(name: 'RegistrationStoreBase.modality', context: context);

  @override
  Modality get modality {
    _$modalityAtom.reportRead();
    return super.modality;
  }

  @override
  set modality(Modality value) {
    _$modalityAtom.reportWrite(value, super.modality, () {
      super.modality = value;
    });
  }

  late final _$imageAtom =
      Atom(name: 'RegistrationStoreBase.image', context: context);

  @override
  String get image {
    _$imageAtom.reportRead();
    return super.image;
  }

  @override
  set image(String value) {
    _$imageAtom.reportWrite(value, super.image, () {
      super.image = value;
    });
  }

  late final _$frequencyAtom =
      Atom(name: 'RegistrationStoreBase.frequency', context: context);

  @override
  Frequency get frequency {
    _$frequencyAtom.reportRead();
    return super.frequency;
  }

  @override
  set frequency(Frequency value) {
    _$frequencyAtom.reportWrite(value, super.frequency, () {
      super.frequency = value;
    });
  }

  late final _$daysAtom =
      Atom(name: 'RegistrationStoreBase.days', context: context);

  @override
  List<Day> get days {
    _$daysAtom.reportRead();
    return super.days;
  }

  @override
  set days(List<Day> value) {
    _$daysAtom.reportWrite(value, super.days, () {
      super.days = value;
    });
  }

  late final _$assessmentAtom =
      Atom(name: 'RegistrationStoreBase.assessment', context: context);

  @override
  Assessment get assessment {
    _$assessmentAtom.reportRead();
    return super.assessment;
  }

  @override
  set assessment(Assessment value) {
    _$assessmentAtom.reportWrite(value, super.assessment, () {
      super.assessment = value;
    });
  }

  late final _$RegistrationStoreBaseActionController =
      ActionController(name: 'RegistrationStoreBase', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$RegistrationStoreBaseActionController.startAction(
        name: 'RegistrationStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$RegistrationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setModality(Modality value) {
    final _$actionInfo = _$RegistrationStoreBaseActionController.startAction(
        name: 'RegistrationStoreBase.setModality');
    try {
      return super.setModality(value);
    } finally {
      _$RegistrationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImage(String value) {
    final _$actionInfo = _$RegistrationStoreBaseActionController.startAction(
        name: 'RegistrationStoreBase.setImage');
    try {
      return super.setImage(value);
    } finally {
      _$RegistrationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFrequency(Frequency value) {
    final _$actionInfo = _$RegistrationStoreBaseActionController.startAction(
        name: 'RegistrationStoreBase.setFrequency');
    try {
      return super.setFrequency(value);
    } finally {
      _$RegistrationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDays(List<Day> value) {
    final _$actionInfo = _$RegistrationStoreBaseActionController.startAction(
        name: 'RegistrationStoreBase.setDays');
    try {
      return super.setDays(value);
    } finally {
      _$RegistrationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAssessment(Assessment value) {
    final _$actionInfo = _$RegistrationStoreBaseActionController.startAction(
        name: 'RegistrationStoreBase.setAssessment');
    try {
      return super.setAssessment(value);
    } finally {
      _$RegistrationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void register() {
    final _$actionInfo = _$RegistrationStoreBaseActionController.startAction(
        name: 'RegistrationStoreBase.register');
    try {
      return super.register();
    } finally {
      _$RegistrationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
modality: ${modality},
image: ${image},
frequency: ${frequency},
days: ${days},
assessment: ${assessment}
    ''';
  }
}
