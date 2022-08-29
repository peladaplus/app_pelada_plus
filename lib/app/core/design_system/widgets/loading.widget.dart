import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../platforms/platform_widget.dart';

class LoadingWidget extends PlatformWidget {
  const LoadingWidget({super.key});

  @override
  Widget createAndroidWidget(BuildContext context) {
    return const CircularProgressIndicator();
  }

  @override
  Widget createIosWidget(BuildContext context) {
    return const CupertinoActivityIndicator();
  }
}
