import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../platforms/platform_widget.dart';

class IconVisibilityWidget extends PlatformWidget<Icon, Icon> {
  final bool isObscure;

  const IconVisibilityWidget({
    super.key,
    required this.isObscure,
  });

  @override
  Icon createAndroidWidget(BuildContext context) => Icon(
        isObscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
      );

  @override
  Icon createIosWidget(BuildContext context) => Icon(
        isObscure ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
      );
}
