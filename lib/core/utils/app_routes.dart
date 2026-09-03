import 'package:flutter/material.dart';
import 'package:islami/feature/Quran/details_sura_screen.dart';
import 'package:islami/feature/Quran/model/sura_data_model.dart';
import 'package:islami/feature/home/home_screen.dart';

abstract final class AppRoutes {
  static homePage() => MaterialPageRoute(builder: (_) => HomeScreen());
  static detailsSuraPage(SuraDataModel sura) =>
      MaterialPageRoute(builder: (_) => DetailsSuraScreen(sura: sura));
}
