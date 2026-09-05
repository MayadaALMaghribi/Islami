import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';

import 'package:islami/feature/splash/splash_screen.dart';

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
      home: SplashScreen(),
    );
  }
}
