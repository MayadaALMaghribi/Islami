import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/feature/Hadeth/views/hadeth_screen.dart';
import 'package:islami/feature/Quran/views/qran_screen.dart';
import 'package:islami/feature/Radio/radio_screen.dart';
import 'package:islami/feature/Seba/views/seba_screen.dart';
import 'package:islami/feature/Time/time_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: buidldBottomNavigationBar(),
    );
  }

  List screens = [
    QranScreen(),
    HadethScreen(),
    SebaScreen(),
    RadioScreen(),
    TimeScreen(),
  ];
  int selectedIndex = 0;
  buidldBottomNavigationBar() {
    return BottomNavigationBar(
      selectedItemColor: AppColors.white,
      currentIndex: selectedIndex,
      unselectedItemColor: AppColors.black,
      onTap: (value) {
        selectedIndex = value;
        setState(() {});
      },

      items: [
        buildBottomNavigationBarItem(
          image: AppAssets.icQuran,
          label: "Quran",
          seleted: selectedIndex == 0,
        ),
        buildBottomNavigationBarItem(
          image: AppAssets.icHadeth,
          label: "Hadeth",
          seleted: selectedIndex == 1,
        ),
        buildBottomNavigationBarItem(
          image: AppAssets.icSebha,
          label: "Sebha",
          seleted: selectedIndex == 2,
        ),
        buildBottomNavigationBarItem(
          image: AppAssets.icRadio,
          label: "Radio",
          seleted: selectedIndex == 3,
        ),

        buildBottomNavigationBarItem(
          image: AppAssets.icTime,
          label: "Time",
          seleted: selectedIndex == 4,
        ),
      ],
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem({
    required String image,
    required String label,
    required seleted,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(66),
          color: seleted ? AppColors.black.withAlpha(153) : Colors.transparent,
        ),

        child: ImageIcon(AssetImage(image)),
      ),
      label: label,
    );
  }
}
