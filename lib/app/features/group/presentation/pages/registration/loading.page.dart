import 'package:app_pelada_plus/app/core/design_system/widgets/animation.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegistrationLoadingPage extends StatefulWidget {
  const RegistrationLoadingPage({Key? key}) : super(key: key);

  @override
  State<RegistrationLoadingPage> createState() =>
      _RegistrationLoadingPageState();
}

class _RegistrationLoadingPageState extends State<RegistrationLoadingPage>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    Future.delayed(
      const Duration(seconds: 4),
      () {
        Modular.to.pushReplacementNamed('/group/registration_success');
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.forward();
    return const Scaffold(
      body: Center(
        child: AnimationWidget(
          name: 'loading',
          repeat: true,
        ),
      ),
    );
  }
}
