import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_planner_app/pages/home.dart';
import 'package:workout_planner_app/theme/app_colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.bgColor,
          primaryColor: AppColors.primary,
          fontFamily: GoogleFonts.martianMono().fontFamily),
      home: const HomePage(),
    );
  }
}
