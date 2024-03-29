import 'package:flutter_modular/flutter_modular.dart';

import 'app/features/auth/auth_module.dart';
import 'app/features/group/group_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/group', module: GroupModule()),
        ModuleRoute('/auth', module: AuthModule()),
      ];
}
