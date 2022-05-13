import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app/core/base_app.dart';
import 'app/core/micro_app.dart';
import 'app/core/micro_core_utils.dart';
import 'app/features/group/presentation/pages/registration.page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: kReleaseMode,

      ///!kReleaseMode para validar diferentes layouts
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget with BaseApp {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    super.registerRouters();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pelada+',
      theme: ThemeData(
        fontFamily: 'Pilat Extended',
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {
        '/': (_, __) => const RegistrationPage(),
      };

  @override
  List<MicroApp> get microApps => [];
}
