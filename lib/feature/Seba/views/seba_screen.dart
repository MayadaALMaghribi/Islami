import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/feature/Seba/model/azkar.dart';

class SebaScreen extends StatefulWidget {
  SebaScreen({super.key});

  @override
  State<SebaScreen> createState() => _SebaScreenState();
}

class _SebaScreenState extends State<SebaScreen>
    with SingleTickerProviderStateMixin {
  final List<Azkar> azkarModelList = [
    Azkar(count: 33, zaker: "الحمدالله"),
    Azkar(count: 33, zaker: "الله اكبر"),
    Azkar(count: 33, zaker: "سبحان الله"),
    Azkar(count: 33, zaker: "استغفر الله"),
  ];

  int count = 0;

  double angle = 0;
  int index = 0;

  @override
  void initState() {
    super.initState();
    count = 0;
    angle = 0;
    index = 0;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.sebabackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppAssets.islamiLogo),
            SizedBox(height: 10),
            Text(
              "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
              style: AppTextStyles.white36Bold,
              textAlign: TextAlign.center,
            ),

            Expanded(
              child: InkWell(
                onTap: () {
                  angle += 11 / 360;
                  if (count < azkarModelList[index].count) {
                    count++;
                  } else if (count == azkarModelList[index].count) {
                    if (index < 3) {
                      count = 0;

                      index++;
                    } else if (index == 3) {
                      index = 0;
                      count = 0;
                      angle = 0;
                    }
                  }

                  setState(() {});
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 8,
                      right: 140,
                      child: Image.asset(
                        AppAssets.isSebaMask,
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26),

                      child: AnimatedRotation(
                        turns: angle,
                        duration: Duration(milliseconds: 300),
                        child: Image.asset(AppAssets.imgSebaBody),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          azkarModelList[index].zaker,
                          style: AppTextStyles.white36Bold,
                        ),
                        SizedBox(height: 10),
                        Text("$count", style: AppTextStyles.white36Bold),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
