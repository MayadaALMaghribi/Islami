import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/feature/onboarding/model/onboarding_d_m.dart';

class OnboardingItemWidget extends StatelessWidget {
  const OnboardingItemWidget({required this.onboardingDM, super.key});
  final OnboardingDM onboardingDM;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: .center,
        children: [
          Image.asset(AppAssets.islamiLogo, alignment: Alignment.topCenter),
          Expanded(
            flex: 4,
            child: Image.asset(onboardingDM.image, color: AppColors.gold),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                onboardingDM.title,
                style: AppTextStyles.gold24Bold,
                textAlign: TextAlign.center,
              ),
            ),
          ),

          Expanded(
            child: Text(
              onboardingDM.description,
              style: AppTextStyles.gold20Bold,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
