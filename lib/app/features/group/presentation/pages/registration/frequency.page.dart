import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/design_system/components/registration_group.component.dart';
import '../../../../../core/design_system/widgets/choice_button.widget.dart';
import '../../../../../core/enums/frequency.enum.dart';
import '../../stores/registration.store.dart';

class RegistrationFrequencyPage extends StatefulWidget {
  const RegistrationFrequencyPage({Key? key}) : super(key: key);

  @override
  State<RegistrationFrequencyPage> createState() =>
      _RegistrationFrequencyPageState();
}

class _RegistrationFrequencyPageState extends State<RegistrationFrequencyPage> {
  final RegistrationStore store = Modular.get<RegistrationStore>();

  final Map<Frequency, bool> buttonList = <Frequency, bool>{
    Frequency.monthly: false,
    Frequency.biweekly: false,
    Frequency.weekly: false,
  };

  @override
  Widget build(BuildContext context) => RegistrationGroupComponent(
        widget: Column(
          children: buttonList.entries.map((MapEntry<Frequency, bool> entry) {
            return ChoiceButton(
                text: entry.key.toValue(),
                isSelected: entry.value,
                action: () {
                  setState(() {
                    buttonList.updateAll((key, value) => value = false);
                    buttonList.update(entry.key, (value) => true);
                    store.setFrequency(entry.key);
                  });
                });
          }).toList(),
        ),
        textTitle: 'Frequência dos jogos',
        textSubtitle: 'Informe qual é a frequência com que os jogos acontecem.',
        titleButton: 'Continuar',
        titleTextButton: 'Voltar',
        actionButton: !buttonList.containsValue(true)
            ? null
            : () => Modular.to.pushNamed('/group/registration_days'),
        actionTextButton: () => Modular.to.pop(),
      );
}
