import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/design_system/components/registration_group.component.dart';
import '../../../../../core/design_system/widgets/input_text.widget.dart';

class RegistrationNamePage extends StatelessWidget {
  RegistrationNamePage({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) => RegistrationGroupComponent(
        widget: InputTextWidget(
          controller: _controller,
          hint: 'Nome do grupo',
        ),
        textTitle: 'Dê um nome ao seu grupo',
        textSubtitle: 'Esse nome será utilizado para se referir ao seu grupo.',
        titleButton: 'Continuar',
        titleTextButton: 'Voltar',
        actionButton: () => Modular.to.pushNamed('/registration_modality'),
        actionTextButton: () => Modular.navigatorDelegate?.pop(),
      );
}
