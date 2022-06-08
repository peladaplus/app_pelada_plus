import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/design_system/components/registration_group.component.dart';
import '../../../../../core/design_system/tokens/paddings.token.dart';
import '../../../../../core/design_system/widgets/choice_button.widget.dart';
import '../../../../../core/enums/days.enum.dart';
import '../../stores/registration.store.dart';

class RegistrationDaysPage extends StatefulWidget {
  const RegistrationDaysPage({Key? key}) : super(key: key);

  @override
  State<RegistrationDaysPage> createState() => _RegistrationDaysPageState();
}

class _RegistrationDaysPageState extends State<RegistrationDaysPage> {
  final RegistrationStore store = Modular.get<RegistrationStore>();

  final Map<Day, bool> buttonListFirstColumn = <Day, bool>{
    Day.monday: false,
    Day.tuesday: false,
    Day.wednesday: false,
    Day.thursday: false,
  };

  final Map<Day, bool> buttonListSecondColumn = <Day, bool>{
    Day.friday: false,
    Day.saturday: false,
    Day.sunday: false,
  };

  void _setDays() {
    buttonListFirstColumn.forEach((key, value) {
      if (value == true) {
        store.days.add(key);
      }
    });

    buttonListSecondColumn.forEach((key, value) {
      if (value == true) {
        store.days.add(key);
      }
    });
  }

  @override
  Widget build(BuildContext context) => RegistrationGroupComponent(
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: buttonListFirstColumn.entries
                  .map((MapEntry<Day, bool> entry) {
                return ChoiceButton(
                    text: entry.key.toValue(),
                    isSelected: entry.value,
                    action: () {
                      setState(() {
                        buttonListFirstColumn.update(
                            entry.key, (value) => !value);
                      });
                    });
              }).toList(),
            ),
            SizedBox(width: TokenPaddings.lg),
            Column(
              children: buttonListSecondColumn.entries
                  .map((MapEntry<Day, bool> entry) {
                return ChoiceButton(
                    text: entry.key.toValue(),
                    isSelected: entry.value,
                    action: () {
                      setState(() {
                        buttonListSecondColumn.update(
                            entry.key, (value) => !value);
                      });
                    });
              }).toList(),
            )
          ],
        ),
        textTitle: 'Dias dos jogos',
        textSubtitle: 'Informe em quais dias da semana os seus jogos ocorrem.',
        titleButton: 'Continuar',
        titleTextButton: 'Voltar',
        actionButton: !buttonListFirstColumn.containsValue(true) &&
                !buttonListSecondColumn.containsValue(true)
            ? null
            : () {
                _setDays();
                Modular.to.pushNamed('/group/registration_evaluation');
              },
        actionTextButton: () => Modular.to.pop(),
      );
}
