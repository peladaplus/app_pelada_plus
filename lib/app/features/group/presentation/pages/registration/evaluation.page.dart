import 'package:app_pelada_plus/app/core/enums/assessment.enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/design_system/components/registration_group.component.dart';
import '../../../../../core/design_system/widgets/choice_button.widget.dart';
import '../../stores/registration.store.dart';

class RegistrationEvaluationPage extends StatefulWidget {
  const RegistrationEvaluationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationEvaluationPage> createState() =>
      _RegistrationEvaluationPageState();
}

class _RegistrationEvaluationPageState
    extends ModularState<RegistrationEvaluationPage, RegistrationStore> {
  final Map<Assessment, bool> buttonList = <Assessment, bool>{
    Assessment.selfEvaluation: false,
    Assessment.moderator: false,
  };

  @override
  Widget build(BuildContext context) => RegistrationGroupComponent(
        widget: Column(
          children: buttonList.entries.map((MapEntry<Assessment, bool> entry) {
            return ChoiceButton(
                text: entry.key.toValue(),
                isSelected: entry.value,
                action: () {
                  setState(() {
                    buttonList.updateAll((key, value) => value = false);
                    buttonList.update(entry.key, (value) => true);
                    store.setAssessment(entry.key);
                  });
                });
          }).toList(),
        ),
        textTitle: 'Processo de avaliação dos jogadores',
        textSubtitle: 'Você pode decidir se os jogadores poderão se '
            'autoavaliar ou você avaliará todos.',
        titleButton: 'Continuar',
        titleTextButton: 'Voltar',
        actionButton: !buttonList.containsValue(true)
            ? null
            : () {
                store.register();
                Modular.to.pushNamed('/group/registration_loading');
              },
        actionTextButton: () => Modular.to.pop(),
      );
}
