import 'package:app_pelada_plus/app/core/design_system/components/registration_group.component.dart';
import 'package:app_pelada_plus/app/core/design_system/widgets/animation.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegistrationSuccessPage extends StatelessWidget {
  const RegistrationSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => RegistrationGroupComponent(
        widget: const AnimationWidget(name: 'success'),
        textTitle: 'Grupo criado com sucesso!',
        textSubtitle: '',
        titleButton: 'Concluir',
        titleTextButton: '',
        actionButton: () =>
            Modular.to.popAndPushNamed('/group/registration_name'),
        actionTextButton: () {},
      );
}
