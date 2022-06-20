import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/design_system/components/registration_group.component.dart';
import '../../../../../core/design_system/widgets/input_text.widget.dart';
import '../../stores/registration.store.dart';

class RegistrationNamePage extends StatefulWidget {
  const RegistrationNamePage({Key? key}) : super(key: key);

  @override
  State<RegistrationNamePage> createState() => _RegistrationNamePageState();
}

class _RegistrationNamePageState extends State<RegistrationNamePage> {
  final RegistrationStore store = Modular.get<RegistrationStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => RegistrationGroupComponent(
        widget: InputTextWidget(
          hint: 'Nome do grupo',
          onChange: (String text) {
            store.setName(text);
          },
        ),
        textTitle: 'Dê um nome ao seu grupo',
        textSubtitle: 'Esse nome será utilizado para se referir ao seu grupo.',
        titleButton: 'Continuar',
        titleTextButton: 'Voltar',
        actionButton: store.name.length < 3
            ? null
            : () => Modular.to.pushNamed('/group/registration_modality'),
        actionTextButton: () => Modular.navigatorDelegate?.pop(),
      ),
    );
  }
}
