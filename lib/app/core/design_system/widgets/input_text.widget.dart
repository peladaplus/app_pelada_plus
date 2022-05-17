import 'package:flutter/material.dart';

import '../tokens/colors.token.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({
    Key? key,
    required this.controller,
    required this.hint,
    this.onTap,
  }) : super(key: key);

  final TextEditingController controller;
  final String hint;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TokenColors.kBlack1,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: TokenColors.kBlack2,
        keyboardType: TextInputType.name,
        onTap: onTap,
        style: TextStyle(
          color: TokenColors.kGrey2,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          focusColor: TokenColors.kBlack1,
          hintText: hint,
          hintStyle: TextStyle(
            color: TokenColors.kGrey2,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: TokenColors.kBlack2),
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: TokenColors.kBlack2),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
