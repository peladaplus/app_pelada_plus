import 'package:app_pelada_plus/app_module.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';
import 'app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (!kDebugMode) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  }
  runApp(
    DevicePreview(
      enabled: kReleaseMode,
      builder: (context) => ModularApp(
        module: AppModule(),
        child: const AppWidget(),
      ),
    ),
  );
}
