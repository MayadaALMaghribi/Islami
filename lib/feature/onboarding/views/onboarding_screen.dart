import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_routes.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/feature/onboarding/views/view_model/onboarding_d_m.dart';
import 'package:islami/feature/onboarding/views/widget/onboarding_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int current = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController.addListener(() {
      current = _pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  OnboardingItemWidget(
                    onboardingDM: OnboardingDM(
                      image: AppAssets.imgWelcome,
                      title: "Welcome To Islmi App",
                      description: "",
                    ),
                  ),
                  OnboardingItemWidget(
                    onboardingDM: OnboardingDM(
                      image: AppAssets.imgMosque,
                      title: "Welcome To Islmi",
                      description:
                          "We Are Very Excited To Have You In Our Community",
                    ),
                  ),
                  OnboardingItemWidget(
                    onboardingDM: OnboardingDM(
                      image: AppAssets.imgHadethCard,
                      title: "Reading the Quran",
                      description: "Read, and your Lord is the Most Generous",
                    ),
                  ),
                  OnboardingItemWidget(
                    onboardingDM: OnboardingDM(
                      image: AppAssets.isBearish,
                      title: "Bearish",
                      description:
                          "Praise the name of your Lord, the Most High",
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: current == 0
                      ? null
                      : () {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                  child: Text(
                    current == 0 ? "" : "Back",
                    style: AppTextStyles.gold16Bold,
                  ),
                ),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: AppColors.gold,
                    dotColor: AppColors.gray,
                    spacing: 4,
                  ),
                ),
                TextButton(
                  onPressed: current == 3
                      ? () {
                          Navigator.pushReplacement(
                            context,
                            AppRoutes.homePage(),
                          );
                        }
                      : () {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                  child: Text("Next", style: AppTextStyles.gold16Bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
