import 'package:flutter_modular/flutter_modular.dart';

import 'data/repositories/auth.repository_impl.dart';
import 'data/sources/auth.datasource.dart';
import 'domain/repositories/auth.repository.dart';
import 'domain/usecases/create_user.usecase.dart';
import 'domain/usecases/get_user.usecase.dart';
import 'domain/usecases/sign_in.usecase.dart';
import 'domain/usecases/sign_out.usecase.dart';
import 'presentation/pages/login.page.dart';
import 'presentation/stores/auth.store.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [
            Bind.factory<AuthDataSource>(
            (i) => AuthDataSource()),
        Bind.factory<AuthRepository>(
            (i) => AuthRepository(i.get<AuthDataSource>())),
        Bind.factory<SignInUseCase>(
            (i) => SignInUseCase(i.get<IAuthRepository>())),
        Bind.factory<SignOutUseCase>(
            (i) => SignOutUseCase(i.get<IAuthRepository>())),
        Bind.factory<CreateUserUseCase>(
            (i) => CreateUserUseCase(i.get<IAuthRepository>())),
        Bind.factory<GetUserUseCase>(
            (i) => GetUserUseCase(i.get<IAuthRepository>())),
        Bind.singleton<AuthStore>(
          (i) => AuthStore(
            i.get<SignInUseCase>(),
            i.get<SignOutUseCase>(),
            i.get<CreateUserUseCase>(),
            i.get<GetUserUseCase>(),
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/login',
          child: (_, __) => const LoginPage(),
        ),
      ];
}
