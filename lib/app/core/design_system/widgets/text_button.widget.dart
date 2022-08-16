import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../tokens/colors.token.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.text,
    this.action,
    this.color,
  }) : super(key: key);

  final String text;
  final VoidCallback? action;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action,
      child: Text(
        text,
        style: TextStyle(
          color: color ?? TokenColors.kWhite,
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
