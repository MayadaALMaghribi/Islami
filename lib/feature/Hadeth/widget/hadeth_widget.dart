import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/feature/Hadeth/model/hadeth_data_model.dart';

class HadethWidget extends StatelessWidget {
  const HadethWidget({required this.hadethDataModel, super.key});

  final HadethDataModel hadethDataModel;

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
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
              Text(hadethDataModel.title, style: AppTextStyles.black24Bold),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                hadethDataModel.hadeth,
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
}
