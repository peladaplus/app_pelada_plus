import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../tokens/colors.token.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.text,
    this.action,
  }) : super(key: key);

  final String text;
  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          backgroundColor: action != null
              ? MaterialStateProperty.all<Color>(TokenColors.kBlue)
              : MaterialStateProperty.all<Color>(TokenColors.kBlack1),
        ),
        onPressed: action,
        child: Text(
          text,
          style: TextStyle(
            color: TokenColors.kWhite,
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
