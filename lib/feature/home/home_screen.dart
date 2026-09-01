import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: buidldBottomNavigationBar());
  }

  buidldBottomNavigationBar() {
    return BottomNavigationBar(
      selectedItemColor: AppColors.white,

      unselectedItemColor: AppColors.black,

      items: [
        buildBottomNavigationBarItem(image: AppAssets.icQuran, label: "Quran"),
        buildBottomNavigationBarItem(
          image: AppAssets.icHadeth,
          label: "Hadeth",
        ),
        buildBottomNavigationBarItem(image: AppAssets.icSebha, label: "Sebha"),
        buildBottomNavigationBarItem(image: AppAssets.icRadio, label: "Radio"),

        buildBottomNavigationBarItem(image: AppAssets.icTime, label: "Time"),
      ],
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem({
    required String image,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(66),
          color: AppColors.black.withAlpha(153),
        ),

        child: ImageIcon(AssetImage(image)),
      ),
      label: label,
    );
  }
}
