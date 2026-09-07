import 'package:flutter/material.dart';
import 'package:islami/feature/Hadeth/views/view_model/hadeth_data_model.dart';
import 'package:islami/feature/Hadeth/views/widget/hadeth_widget_details.dart';
import 'package:islami/feature/Quran/views/details_sura_screen.dart';
import 'package:islami/feature/Quran/views/model/sura_data_model.dart';
import 'package:islami/feature/home/views/home_screen.dart';
import 'package:islami/feature/onboarding/views/onboarding_screen.dart';

abstract final class AppRoutes {
  static homePage() => MaterialPageRoute(builder: (_) => HomeScreen());
  static detailsSuraPage(SuraDataModel sura) =>
      MaterialPageRoute(builder: (_) => DetailsSuraScreen(sura: sura));
  static onBoardingPage() =>
      MaterialPageRoute(builder: (_) => OnboardingScreen());
  static hadethDetails(HadethDataModel hadeth, int index) => MaterialPageRoute(
    builder: (_) => HadethWidgetDetails(hadeth: hadeth, numberofHadeth: index),
  );
}
