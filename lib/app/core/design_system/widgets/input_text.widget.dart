import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../tokens/colors.token.dart';

class InputTextWidget extends StatefulWidget {
  const InputTextWidget({
    Key? key,
    required this.hint,
    this.controller,
    this.hintColor,
    this.backgroundColor,
    this.onChange,
    this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
  }) : super(key: key);

  final String hint;
  final TextEditingController? controller;
  final Color? hintColor;
  final Function? onChange;
  final Color? backgroundColor;
  final bool? obscureText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String? Function(String?)? validator;

  @override
  State<InputTextWidget> createState() => _InputTextWidgetState();
}

class _InputTextWidgetState extends State<InputTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? TokenColors.kBlack1,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        obscureText: widget.obscureText ?? false,
        cursorColor: TokenColors.kBlack2,
        keyboardType: TextInputType.text,
        inputFormatters: [
          FilteringTextInputFormatter.deny(
            RegExp(r'^\s$'),
          ),
        ],
        onChanged: (String input) {
          setState(() {
            if (widget.onChange != null) {
              widget.onChange!(input);
            }
          });
        },
        style: TextStyle(
          color: TokenColors.kGrey2,
          fontWeight: FontWeight.w600,
          fontSize: 12.sp,
        ),
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          prefixIconColor: widget.hintColor ?? TokenColors.kGrey2,
          suffixIcon: widget.suffixIcon,
          suffixIconColor: widget.hintColor ?? TokenColors.kGrey2,
          focusColor: TokenColors.kBlack1,
          hintText: widget.hint,
          hintStyle: TextStyle(
            color: widget.hintColor ?? TokenColors.kGrey2,
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: TokenColors.kBlack2),
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: TokenColors.kBlack2),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
