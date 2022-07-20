import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({
    Key? key,
    required this.name,
    this.repeat = false,
  }) : super(key: key);

  final String name;
  final bool repeat;

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/animations/$name.json',
      height: 50.h,
      repeat: repeat,
    );
  }
}
