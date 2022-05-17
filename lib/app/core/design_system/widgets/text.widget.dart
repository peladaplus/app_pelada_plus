import 'package:flutter/material.dart';

import '../tokens/colors.token.dart';

class TextWidget extends StatelessWidget {
  const TextWidget.title({
    Key? key,
    required this.text,
    this.color = TokenColors.kWhite,
    this.fontSize = 36,
    this.fontWeight = FontWeight.w600,
  }) : super(key: key);

  const TextWidget.subtitle({
    Key? key,
    required this.text,
    this.color = TokenColors.kGrey2,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w400,
  }) : super(key: key);

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
