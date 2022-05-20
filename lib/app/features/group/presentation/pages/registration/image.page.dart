import 'package:app_pelada_plus/app/core/design_system/components/registration_group.component.dart';
import 'package:app_pelada_plus/app/core/design_system/widgets/choice_image.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegistrationImagePage extends StatelessWidget {
  const RegistrationImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => RegistrationGroupComponent(
        widget: Column(
          children: <Widget>[
            ChoiceImageWidget(
                image: 'soccer1', isSelected: false, action: () {}),
            ChoiceImageWidget(
                image: 'soccer2', isSelected: true, action: () {}),
            // ChoiceImageWidget(
            //     image: 'soccer3', isSelected: false, action: () {}),
          ],
        ),
        textTitle: 'Escolha uma imagem para o seu grupo',
        textSubtitle:
            'Selecione uma imagem para ser apresentada na capa do seu grupo.',
        titleButton: 'Continuar',
        titleTextButton: 'Voltar',
        actionButton: () => Modular.to.pushNamed('/registration_frequency'),
        actionTextButton: () => Modular.to.pop(),
      );
}
