import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/feature/Hadeth/views/view_model/hadeth_data_model.dart';

class HadethWidgetDetails extends StatelessWidget {
  const HadethWidgetDetails({
    super.key,
    required this.hadeth,
    required this.numberofHadeth,
  });
  final HadethDataModel hadeth;
  final numberofHadeth;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Hadeth${numberofHadeth}"),
        titleTextStyle: AppTextStyles.gold20Bold,
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back, color: AppColors.gold),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Image.asset(AppAssets.imgleftCorner)),
              Expanded(
                flex: 3,
                child: Text(
                  hadeth.title,
                  style: AppTextStyles.gold24Bold,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(child: Image.asset(AppAssets.imgRightCorner)),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  hadeth.hadeth,
                  style: AppTextStyles.gold20Bold,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
          ),
          Image.asset(AppAssets.isBottomDecorationImg),
        ],
      ),
      backgroundColor: AppColors.black,
    );
    ;
  }
}
