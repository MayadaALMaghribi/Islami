import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_routes.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/feature/Quran/views/model/most_recently_sura_dm.dart';
import 'package:islami/feature/Quran/views/model/sura_data_model.dart';

class BuildCardMostRecently extends StatelessWidget {
  const BuildCardMostRecently({
    required this.sura,
    required this.mostSuraDM,
    super.key,
  });
  final MostRecentlySuraDM mostSuraDM;
  final SuraDataModel sura;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, AppRoutes.detailsSuraPage(sura));
      },
      child: Container(
        padding: EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
          color: AppColors.gold,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: .start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(mostSuraDM.suraNameEn, style: AppTextStyles.black24Bold),
                SizedBox(height: 10),
                Text(mostSuraDM.suraNameAr, style: AppTextStyles.black24Bold),
                SizedBox(height: 10),
                Text(mostSuraDM.verses, style: AppTextStyles.black14Bold),
              ],
            ),
            Image.asset(AppAssets.imgMostRecent),
          ],
        ),
      ),
    );
  }
}
