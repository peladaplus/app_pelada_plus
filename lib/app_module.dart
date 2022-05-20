import 'package:flutter_modular/flutter_modular.dart';

import 'app/features/group/presentation/pages/registration/days.page.dart';
import 'app/features/group/presentation/pages/registration/error.page.dart';
import 'app/features/group/presentation/pages/registration/evaluation.page.dart';
import 'app/features/group/presentation/pages/registration/frequency.page.dart';
import 'app/features/group/presentation/pages/registration/image.page.dart';
import 'app/features/group/presentation/pages/registration/loading.page.dart';
import 'app/features/group/presentation/pages/registration/modality.page.dart';
import 'app/features/group/presentation/pages/registration/name.page.dart';
import 'app/features/group/presentation/pages/registration/success.page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/registration_name',
          child: (_, __) => RegistrationNamePage(),
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
          child: (_, __) => const RegistrationImagePage(),
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
