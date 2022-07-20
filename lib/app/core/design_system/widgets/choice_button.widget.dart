import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../tokens/colors.token.dart';
import '../tokens/paddings.token.dart';

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
      child: Padding(
        padding: EdgeInsets.only(bottom: TokenPaddings.lg),
        child: Container(
          height: 6.h,
          width: 35.w,
          decoration: BoxDecoration(
            gradient: isSelected ? TokenColors.gradient : null,
            color: isSelected ? null : TokenColors.kBlack1,
            borderRadius: BorderRadius.circular(26),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: TokenColors.kWhite,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
