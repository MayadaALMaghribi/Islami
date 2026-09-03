import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/feature/Hadeth/model/hadeth_data_model.dart';

class HadethWidgetCard extends StatefulWidget {
  const HadethWidgetCard({required this.index, super.key});
  final int index;

  @override
  State<HadethWidgetCard> createState() => _HadethWidgetCardState();
}

class _HadethWidgetCardState extends State<HadethWidgetCard> {
  String content = "";
  HadethDataModel hadeeths = HadethDataModel(title: "", hadeth: "");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.gold,
        image: DecorationImage(image: AssetImage(AppAssets.isHadethCard)),
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
              Text(hadeeths.title, style: AppTextStyles.black24Bold),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                hadeeths.hadeth,
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

  readHadethFile() async {
    List<String> lines;
    String fileName = "asset/files/hadeeth/h${widget.index + 1}.txt";
    content = await rootBundle.loadString(fileName);
    lines = content.split("\n");
    hadeeths = HadethDataModel(
      title: lines[0],
      hadeth: lines.sublist(1).join("\n"),
    );
    print(hadeeths.hadeth);
    print(hadeeths.title);
    setState(() {});
  }
}
