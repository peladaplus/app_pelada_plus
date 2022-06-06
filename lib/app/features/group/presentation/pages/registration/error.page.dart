import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/design_system/components/registration_group.component.dart';
import '../../../../../core/design_system/widgets/animation.widget.dart';

class RegistrationErrorPage extends StatelessWidget {
  const RegistrationErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => RegistrationGroupComponent(
        widget: const AnimationWidget(
          name: 'error',
        ),
        textTitle: 'Não foi possível criar o grupo!',
        textSubtitle: '',
        titleButton: 'Tentar novamente',
        titleTextButton: 'Descartar',
        actionButton: () => Modular.to.pushNamed('/registration_loading'),
        actionTextButton: () =>
            Modular.to.popAndPushNamed('/group/registration_name'),
      );
}
