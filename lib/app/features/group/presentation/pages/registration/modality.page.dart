import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/design_system/components/registration_group.component.dart';
import '../../../../../core/design_system/widgets/choice_button.widget.dart';

class RegistrationModalityPage extends StatelessWidget {
  const RegistrationModalityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => RegistrationGroupComponent(
        widget: Column(
          children: <Widget>[
            ChoiceButton(text: 'Futebol', isSelected: true, action: () {}),
            ChoiceButton(text: 'Futsal', isSelected: false, action: () {}),
            ChoiceButton(text: 'Society', isSelected: false, action: () {}),
          ],
        ),
        textTitle: 'Informe a modalidade',
        textSubtitle: 'Informe qual é a modalidade que o seu grupo pratica.',
        titleButton: 'Continuar',
        titleTextButton: 'Voltar',
        actionButton: () => Modular.to.pushNamed('/registration_image'),
        actionTextButton: () => Modular.to.pop(),
      );
}
