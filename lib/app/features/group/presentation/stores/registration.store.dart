import 'package:app_pelada_plus/app/core/enums/assessment.enum.dart';
import 'package:app_pelada_plus/app/core/enums/frequency.enum.dart';
import 'package:app_pelada_plus/app/core/enums/modality.enum.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/enums/days.enum.dart';
import '../../domain/entities/group.entity.dart';
import '../../domain/usecases/create_group.usecase.dart';

part 'registration.store.g.dart';

class RegistrationStore = _RegistrationStore with _$RegistrationStore;

abstract class _RegistrationStore with Store {
  final CreateGroupUseCase _createGroupUseCase;

  _RegistrationStore(this._createGroupUseCase);

  @observable
  late String name = '';

  @observable
  late Modality modality = Modality.none;

  @observable
  late String image = '';

  @observable
  late Frequency frequency = Frequency.none;

  @observable
  late List<Day> days = [];

  @observable
  late Assessment assessment = Assessment.none;

  @action
  void setName(String value) {
    name = value;
  }

  @action
  void setModality(Modality value) {
    modality = value;
  }

  @action
  void setImage(String value) {
    image = value;
  }

  @action
  void setFrequency(Frequency value) {
    frequency = value;
  }

  @action
  void setDays(List<Day> value) {
    days = value;
  }

  @action
  void setAssessment(Assessment value) {
    assessment = value;
  }

  @action
  void register() {
    final GroupEntity group = GroupEntity(
      name: name,
      image: image,
      frequency: frequency,
      days: days,
      modality: modality,
      assessment: assessment,
    );
    _createGroupUseCase(group);
  }
}
