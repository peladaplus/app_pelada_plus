import 'package:flutter/material.dart';

import '../tokens/paddings.token.dart';
import '../widgets/button.widget.dart';
import '../widgets/text.widget.dart';
import '../widgets/text_button.widget.dart';

class RegistrationGroupComponent extends StatelessWidget {
  const RegistrationGroupComponent({
    Key? key,
    required this.widget,
    required this.textTitle,
    required this.textSubtitle,
    required this.titleButton,
    required this.titleTextButton,
    required this.actionButton,
    required this.actionTextButton,
  }) : super(key: key);

  final Widget widget;
  final String textTitle;
  final String textSubtitle;
  final String titleButton;
  final VoidCallback actionButton;
  final String titleTextButton;
  final VoidCallback actionTextButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
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
                    Padding(
                      padding: EdgeInsets.only(top: TokenPaddings.md),
                      child: TextWidget.title(text: textTitle),
                    ),
                    Visibility(
                      visible: textSubtitle.isNotEmpty,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: TokenPaddings.sm),
                        child: TextWidget.subtitle(text: textSubtitle),
                      ),
                    ),
                  ],
                ),
                widget,
                Column(
                  children: <Widget>[
                    ButtonWidget(
                      text: titleButton,
                      action: actionButton,
                    ),
                    Visibility(
                      visible: titleTextButton.isNotEmpty,
                      child: TextButtonWidget(
                        text: titleTextButton,
                        action: actionTextButton,
                      ),
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
