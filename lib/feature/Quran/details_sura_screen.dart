import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/feature/Quran/model/sura_data_model.dart';

class DetailsSuraScreen extends StatefulWidget {
  const DetailsSuraScreen({required this.sura, super.key});
  final SuraDataModel sura;

  @override
  State<DetailsSuraScreen> createState() => _DetailsSuraScreenState();
}

class _DetailsSuraScreenState extends State<DetailsSuraScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readSuraContent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.sura.suraNameEn),
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
              Image.asset(AppAssets.imgleftCorner),
              Text(widget.sura.suraNameAr, style: AppTextStyles.gold24Bold),
              Image.asset(AppAssets.imgRightCorner),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                content,
                style: AppTextStyles.gold20Bold,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
          Image.asset(AppAssets.isBottomDecorationImg),
        ],
      ),
      backgroundColor: AppColors.black,
    );
  }

  String content = "";
  readSuraContent() async {
    String fileName = "asset/files/suras/${widget.sura.numberOfSura}.txt";
    content = await rootBundle.loadString(fileName);
    setState(() {});
    List<String> lines = content.split("\n");
    for (int i = 0; i < lines.length; i++) {
      if (lines[i].contains(" ")) {
        lines[i] += "[${i + 1}]";
      } else {}
    }

    content = lines.join();
  }
}
