import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/feature/Quran/model/most_recently_sura_dm.dart';
import 'package:islami/feature/Quran/widgets/list_most_recently.dart';
import 'package:islami/feature/Quran/widgets/widget_list_view_sura.dart';

class QranScreen extends StatelessWidget {
  const QranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.imgQuranBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppAssets.islamiLogo),
            buildSearchQuran(),
            SizedBox(height: 20),
            Text("Most Recently", style: AppTextStyles.white16Bold),
            SizedBox(height: 10),

            SizedBox(
              height: 150,
              child: ListMostRecently(
                mostRecentlySuraDM: MostRecentlySuraDM(
                  suraNameEn: "Al-Anbiya",
                  suraNameAr: "الأنبياء",
                  verses: "112 verses",
                ),
              ),
            ),
            SizedBox(height: 10),
            Text("Suras List", style: AppTextStyles.white16Bold),
            SizedBox(height: 10),
            Expanded(child: WidgetListViewSura()),
          ],
        ),
      ),
    );
  }

  buildSearchQuran() {
    return TextField(
      cursorColor: AppColors.gold,
      style: AppTextStyles.white16Bold,
      decoration: InputDecoration(
        label: Row(
          children: [
            Image.asset(AppAssets.icQuran, color: AppColors.gold),
            SizedBox(width: 16),
            Text("Sura Name"),
          ],
        ),
        labelStyle: AppTextStyles.white16Bold,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.gold),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.gold),
        ),
      ),
    );
  }
}
