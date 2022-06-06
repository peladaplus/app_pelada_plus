import 'package:flutter/material.dart';

import '../tokens/colors.token.dart';

class InputTextWidget extends StatefulWidget {
  const InputTextWidget({
    Key? key,
    required this.hint,
    this.onChange,
  }) : super(key: key);

  final String hint;
  final Function? onChange;

  @override
  State<InputTextWidget> createState() => _InputTextWidgetState();
}

class _InputTextWidgetState extends State<InputTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TokenColors.kBlack1,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        cursorColor: TokenColors.kBlack2,
        keyboardType: TextInputType.text,
        // inputFormatters: [
        //   FilteringTextInputFormatter.allow(RegExp('')),
        // ],
        onChanged: (String input) {
          setState(() {
            if (widget.onChange != null) {
              widget.onChange!(input);
            }
          });
        },
        style: const TextStyle(
          color: TokenColors.kGrey2,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          focusColor: TokenColors.kBlack1,
          hintText: widget.hint,
          hintStyle: const TextStyle(
            color: TokenColors.kGrey2,
            fontWeight: FontWeight.w600,
            fontSize: 20,
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
