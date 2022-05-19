import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/animations/success.json',
      height: MediaQuery.of(context).size.height / 2.5,
      repeat: false,
    );
  }
}
