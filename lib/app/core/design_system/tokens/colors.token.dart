import 'package:flutter/material.dart';

class TokenColors {
  static const Color kWhite = Color(0xFFFFFFFF);
  static const Color kGrey1 = Color(0xFFC4C4C4);
  static const Color kGrey2 = Color(0xFF65656B);
  static const Color kBlue = Color(0xFF246BFD);
  static const Color kBlack1 = Color(0xFF222232);
  static const Color kBlack2 = Color(0xFF181829);

  static Gradient gradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(0.8, 1),
    colors: [
      Color(0xFFF4A58A),
      Color(0xFFED6B4E),
    ],
  );
}
