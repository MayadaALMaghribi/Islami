import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/feature/Seba/seba_screen.dart';

import 'package:islami/feature/home/home_screen.dart';
import 'package:islami/feature/onboarding/onboarding_screen.dart';
import 'package:islami/feature/onboarding/widget/onboarding_item_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: AppColors.gold),
      debugShowCheckedModeBanner: false,
      home: SebaScreen(),
    );
  }
}
