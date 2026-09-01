import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SizedBox(child: Image.asset(AppAssets.imgSplash)));
  }
}
