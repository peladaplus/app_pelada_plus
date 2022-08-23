import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../platforms/platform_widget.dart';
import '../tokens/colors.token.dart';

class TextButtonWidget extends PlatformWidget {
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
  Widget createAndroidWidget(BuildContext context) {
    return TextButton(
      onPressed: action,
      child: _setText(),
    );
  }

  @override
  Widget createIosWidget(BuildContext context) {
    return CupertinoButton(
      onPressed: action,
      child: _setText(),
    );
  }

  Text _setText() {
    return Text(
      text,
      style: TextStyle(
        color: color ?? TokenColors.kWhite,
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
    );
  }
}
