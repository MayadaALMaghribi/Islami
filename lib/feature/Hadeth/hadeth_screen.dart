import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_text_styles.dart';

class HadethScreen extends StatelessWidget {
  const HadethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage(AppAssets.imgHadethBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AppAssets.islamiLogo),
          Expanded(child: buildHadethCarousel()),
        ],
      ),
    );
  }

  buildHadethCarousel() => CarouselSlider.builder(
    itemCount: 100,
    itemBuilder: (context, index, realindex) {
      return buildCarouselWidget();
    },
    options: CarouselOptions(enlargeCenterPage: true, height: double.infinity),
  );

  buildCarouselWidget() => Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    margin: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: AppColors.gold,
    ),
    child: Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppAssets.imgleftCorner, color: AppColors.black),

                Image.asset(AppAssets.imgRightCorner, color: AppColors.black),
              ],
            ),
            Text("الحديث الثالث العشر", style: AppTextStyles.black24Bold),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Text(
              " عن أمـيـر المؤمنـين أبي حـفص عمر بن الخطاب رضي الله عنه ، قال : سمعت رسول الله صلى الله عـليه وسلم يـقـول : ( إنـما الأعـمـال بالنيات وإنـمـا لكـل امـرئ ما نـوى . فمن كـانت هجرته إلى الله ورسولـه فهجرتـه إلى الله ورسـوله ومن كانت هجرته لـدنيا يصـيبها أو امرأة ينكحها فهجرته إلى ما هاجر إليه ).رواه إمام المحد ثين أبـو عـبـد الله محمد بن إسماعـيل بن ابراهـيـم بن المغـيره بن بـرد زبه البخاري الجعـفي،[رقم:1] وابـو الحسـيـن مسلم بن الحجاج بن مـسلم القـشـيري الـنيسـابـوري [رقم :1907] رضي الله عنهما في صحيحيهما اللذين هما أصح الكتب المصنفه.",
              style: AppTextStyles.black16Bold,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
        Image.asset(
          fit: BoxFit.cover,
          AppAssets.isBottomDecorationImg,
          color: AppColors.black,
        ),
      ],
    ),
  );
}
