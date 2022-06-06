import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'data/repositories/group.repository_impl.dart';
import 'data/sources/group.datasource.dart';
import 'domain/repositories/group.repository.dart';
import 'domain/usecases/create_group.usecase.dart';
import 'presentation/pages/registration/days.page.dart';
import 'presentation/pages/registration/error.page.dart';
import 'presentation/pages/registration/evaluation.page.dart';
import 'presentation/pages/registration/frequency.page.dart';
import 'presentation/pages/registration/image.page.dart';
import 'presentation/pages/registration/loading.page.dart';
import 'presentation/pages/registration/modality.page.dart';
import 'presentation/pages/registration/name.page.dart';
import 'presentation/pages/registration/success.page.dart';
import 'presentation/stores/registration.store.dart';

class GroupModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<Dio>((_) => Dio()),
        Bind.factory<GroupDataSource>((i) => GroupDataSource(i.get<Dio>())),
        Bind.factory<GroupRepository>(
            (i) => GroupRepository(i.get<GroupDataSource>())),
        Bind.factory<CreateGroupUseCase>(
            (i) => CreateGroupUseCase(i.get<IGroupRepository>())),
        Bind.singleton<RegistrationStore>(
            (i) => RegistrationStore(i.get<CreateGroupUseCase>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/registration_name',
          child: (_, __) => const RegistrationNamePage(),
          transition: TransitionType.downToUp,
          duration: const Duration(milliseconds: 400),
        ),
        ChildRoute(
          '/registration_modality',
          child: (_, __) => const RegistrationModalityPage(),
          transition: TransitionType.downToUp,
          duration: const Duration(milliseconds: 400),
        ),
        ChildRoute(
          '/registration_image',
          child: (_, args) => RegistrationImagePage(
            modality: args.queryParams['modality'] as String,
          ),
          transition: TransitionType.downToUp,
          duration: const Duration(milliseconds: 400),
        ),
        ChildRoute(
          '/registration_frequency',
          child: (_, __) => const RegistrationFrequencyPage(),
          transition: TransitionType.downToUp,
          duration: const Duration(milliseconds: 400),
        ),
        ChildRoute(
          '/registration_days',
          child: (_, __) => const RegistrationDaysPage(),
          transition: TransitionType.downToUp,
          duration: const Duration(milliseconds: 400),
        ),
        ChildRoute(
          '/registration_evaluation',
          child: (_, __) => const RegistrationEvaluationPage(),
          transition: TransitionType.downToUp,
          duration: const Duration(milliseconds: 400),
        ),
        ChildRoute(
          '/registration_loading',
          child: (_, __) => const RegistrationLoadingPage(),
          transition: TransitionType.downToUp,
          duration: const Duration(milliseconds: 400),
        ),
        ChildRoute(
          '/registration_success',
          child: (_, __) => const RegistrationSuccessPage(),
          transition: TransitionType.downToUp,
          duration: const Duration(milliseconds: 400),
        ),
        ChildRoute(
          '/registration_error',
          child: (_, __) => const RegistrationErrorPage(),
          transition: TransitionType.downToUp,
          duration: const Duration(milliseconds: 400),
        ),
      ];
}
