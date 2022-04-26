import 'package:flutter/material.dart';

import 'micro_app.dart';
import 'micro_core_utils.dart';

abstract class BaseApp {
  List<MicroApp> get microApps;

  Map<String, WidgetBuilderArgs> get baseRoutes;

  final Map<String, WidgetBuilderArgs> routes = {};

  void registerRouters() {
    if (baseRoutes.isNotEmpty) routes.addAll(baseRoutes);
    if (microApps.isNotEmpty) {
      for (MicroApp microApp in microApps) {
        routes.addAll(microApp.routes);
      }
    }
  }

  Route<dynamic>? generateRoute(RouteSettings settings) {
    final navigateTo = routes[settings.name];
    return navigateTo == null
        ? null
        : MaterialPageRoute(
            builder: (context) => navigateTo.call(context, settings.arguments));
  }
}
