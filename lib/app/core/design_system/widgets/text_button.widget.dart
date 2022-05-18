import 'package:flutter/material.dart';

import '../tokens/colors.token.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.text,
    this.action,
  }) : super(key: key);

  final String text;
  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action,
      child: Text(
        text,
        style: const TextStyle(
          color: TokenColors.kWhite,
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
      ),
    );
  }
}
