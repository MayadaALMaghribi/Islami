import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/feature/Quran/model/sura_data_model.dart';

class WidgetSura extends StatelessWidget {
  const WidgetSura({required this.sura, super.key});
  final SuraDataModel sura;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          buildNumberOfSura(),
          SizedBox(width: 24),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(sura.suraNameEn, style: AppTextStyles.white20Bold),
                Text(sura.verses, style: AppTextStyles.white14Bold),
              ],
            ),
          ),
          Text(sura.suraNameAr, style: AppTextStyles.white20Bold),
        ],
      ),
    );
  }

  Container buildNumberOfSura() {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.imgSuraNumberFrame)),
      ),
      child: Center(
        child: Text(sura.numberOfSura, style: AppTextStyles.white16Bold),
      ),
    );
  }
}
