import 'package:flutter/material.dart';

import '../tokens/colors.token.dart';

class ChoiceButton extends StatelessWidget {
  const ChoiceButton({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.action,
  }) : super(key: key);

  final String text;
  final bool isSelected;
  final Function() action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        height: MediaQuery.of(context).size.height / 16,
        width: MediaQuery.of(context).size.width / 2.8,
        decoration: BoxDecoration(
          gradient: isSelected ? TokenColors.gradient : null,
          color: isSelected ? null : TokenColors.kBlack1,
          borderRadius: BorderRadius.circular(26),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: TokenColors.kWhite,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
