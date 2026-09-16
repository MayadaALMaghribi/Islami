import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_routes.dart';
import 'package:islami/core/utils/app_text_styles.dart';

class SplashNativeScreen extends StatefulWidget {
  const SplashNativeScreen({super.key});

  @override
  State<SplashNativeScreen> createState() => _SplashNativeScreenState();
}

class _SplashNativeScreenState extends State<SplashNativeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goHome();
    setState(() {});
  }

  goHome() async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (mounted) {
      Navigator.pushReplacement(context, AppRoutes.onBoardingPage());
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          Spacer(),
          Center(
            child: Image.asset(
              AppAssets.imgSplashLogo,
              alignment: Alignment.center,
            ),
          ),
          Spacer(),
          Image.asset(AppAssets.imgBranding),
          Text("Supervised by Mohamed Nabil", style: AppTextStyles.gold16Bold),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
