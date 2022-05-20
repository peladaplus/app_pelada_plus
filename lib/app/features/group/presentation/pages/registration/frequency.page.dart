import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/design_system/components/registration_group.component.dart';
import '../../../../../core/design_system/widgets/choice_button.widget.dart';

class RegistrationFrequencyPage extends StatelessWidget {
  const RegistrationFrequencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => RegistrationGroupComponent(
        widget: Column(
          children: <Widget>[
            ChoiceButton(text: 'Semanal', isSelected: true, action: () {}),
            ChoiceButton(text: 'Quinzenal', isSelected: false, action: () {}),
            ChoiceButton(text: 'Mensal', isSelected: false, action: () {}),
          ],
        ),
        textTitle: 'Frequência dos jogos',
        textSubtitle: 'Informe qual é a frequência com que os jogos acontecem.',
        titleButton: 'Continuar',
        titleTextButton: 'Voltar',
        actionButton: () => Modular.to.pushNamed('/registration_days'),
        actionTextButton: () => Modular.to.pop(),
      );
}
