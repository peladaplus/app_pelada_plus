import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/design_system/components/registration_group.component.dart';
import '../../../../../core/design_system/widgets/choice_button.widget.dart';

class RegistrationEvaluationPage extends StatelessWidget {
  const RegistrationEvaluationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => RegistrationGroupComponent(
        widget: Column(
          children: [
            ChoiceButton(text: 'Autoavaliação', isSelected: false, action: () {}),
            ChoiceButton(text: 'Moderador', isSelected: true, action: () {}),
          ],
        ),
        textTitle: 'Processo de avaliação dos jogadores',
        textSubtitle: 'Você pode decidir se os jogadores poderão se '
            'autoavaliar ou você avaliará todos.',
        titleButton: 'Continuar',
        titleTextButton: 'Voltar',
        actionButton: () => Modular.to.pushNamed('/registration_loading'),
        actionTextButton: () => Modular.to.pop(),
      );
}
