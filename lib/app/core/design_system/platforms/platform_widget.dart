import 'dart:io' show Platform;

import 'package:flutter/widgets.dart';

abstract class PlatformWidget<I extends Widget, A extends Widget>
    extends StatelessWidget {
  const PlatformWidget({super.key});

  @override
  Widget build(BuildContext context) => Platform.isAndroid
      ? createAndroidWidget(context)
      : createIosWidget(context);

  I createIosWidget(BuildContext context);
  A createAndroidWidget(BuildContext context);
}
