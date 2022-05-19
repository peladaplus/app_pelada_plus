import 'package:flutter/material.dart';

import '../tokens/colors.token.dart';
import '../tokens/paddings.token.dart';
import '../widgets/button.widget.dart';
import '../widgets/choice_image.widget.dart';
import '../widgets/text.widget.dart';
import '../widgets/text_button.widget.dart';

class RegistrationGroupComponent extends StatefulWidget {
  const RegistrationGroupComponent({Key? key}) : super(key: key);

  @override
  State<RegistrationGroupComponent> createState() =>
      _RegistrationGroupComponentState();
}

class _RegistrationGroupComponentState
    extends State<RegistrationGroupComponent> {
  late bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: TokenColors.kBlack2,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(TokenPaddings.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 25),
                    const TextWidget.title(text: 'Dê um nome ao seu grupo'),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: TokenPaddings.sm),
                      child: const TextWidget.subtitle(
                        text: 'Esse nome será utilizado '
                            'para se referir ao seu grupo.',
                      ),
                    ),
                  ],
                ),
                ChoiceImageWidget(
                  image: 'soccer3',
                  isSelected: true,
                  action: () {},
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: TokenPaddings.xs),
                      child: ButtonWidget(
                        text: 'Continuar',
                        action: () {},
                      ),
                    ),
                    TextButtonWidget(
                      text: 'Voltar',
                      action: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
