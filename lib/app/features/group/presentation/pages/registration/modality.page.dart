import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/design_system/components/registration_group.component.dart';
import '../../../../../core/design_system/widgets/choice_button.widget.dart';
import '../../../../../core/enums/modality.enum.dart';
import '../../stores/registration.store.dart';

class RegistrationModalityPage extends StatefulWidget {
  const RegistrationModalityPage({Key? key}) : super(key: key);

  @override
  State<RegistrationModalityPage> createState() =>
      _RegistrationModalityPageState();
}

class _RegistrationModalityPageState extends State<RegistrationModalityPage> {
  final RegistrationStore store = Modular.get<RegistrationStore>();

  final Map<Modality, bool> buttonList = <Modality, bool>{
    Modality.soccer: false,
    Modality.indoorSoccer: false,
    Modality.society: false
  };

  @override
  Widget build(BuildContext context) => RegistrationGroupComponent(
        widget: Column(
          children: buttonList.entries.map((MapEntry<Modality, bool> entry) {
            return ChoiceButton(
                text: entry.key.toValue(),
                isSelected: entry.value,
                action: () {
                  setState(() {
                    buttonList.updateAll((key, value) => value = false);
                    buttonList.update(entry.key, (value) => true);
                    store.setModality(entry.key);
                  });
                });
          }).toList(),
        ),
        textTitle: 'Informe a modalidade',
        textSubtitle: 'Informe qual é a modalidade que o seu grupo pratica.',
        titleButton: 'Continuar',
        titleTextButton: 'Voltar',
        actionButton: !buttonList.containsValue(true)
            ? null
            : () => Modular.to.pushNamed(
                '/group/registration_image?modality=${store.modality.name}'),
        actionTextButton: () => Modular.to.pop(),
      );
}
