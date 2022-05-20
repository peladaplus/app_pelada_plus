import 'package:app_pelada_plus/app/core/design_system/tokens/paddings.token.dart';
import 'package:app_pelada_plus/app/core/design_system/widgets/choice_button.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/design_system/components/registration_group.component.dart';

class RegistrationDaysPage extends StatelessWidget {
  const RegistrationDaysPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => RegistrationGroupComponent(
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                ChoiceButton(text: 'Segunda', isSelected: false, action: () {}),
                ChoiceButton(text: 'Terça', isSelected: false, action: () {}),
                ChoiceButton(text: 'Quarta', isSelected: true, action: () {}),
                ChoiceButton(text: 'Quinta', isSelected: false, action: () {}),
              ],
            ),
            SizedBox(width: TokenPaddings.lg),
            Column(
              children: [
                ChoiceButton(text: 'Sexta', isSelected: false, action: () {}),
                ChoiceButton(text: 'Sábado', isSelected: true, action: () {}),
                ChoiceButton(text: 'Domingo', isSelected: false, action: () {}),
              ],
            )
          ],
        ),
        textTitle: 'Dias dos jogos',
        textSubtitle: 'Informe em quais dias da semana os seus jogos ocorrem.',
        titleButton: 'Continuar',
        titleTextButton: 'Voltar',
        actionButton: () => Modular.to.pushNamed('/registration_evaluation'),
        actionTextButton: () => Modular.to.pop(),
      );
}
