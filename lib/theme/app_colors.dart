import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xff643DF2);
  static const Color green = Color(0xff0D8C15);
  static const Color bgColor = Colors.black;
  static const Color blackVar = Color(0xff212126);
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.05, 0.95],
    colors: <Color>[
      Color.fromARGB(255, 133, 88, 254),
      Color.fromARGB(255, 117, 67, 255),
    ],
  );
}
