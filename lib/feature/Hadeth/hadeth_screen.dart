import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/feature/Hadeth/widget/hadeth_widget.dart';

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
    itemCount: 50,
    itemBuilder: (context, index, realindex) {
      return HadethWidget(index: index);
    },
    options: CarouselOptions(enlargeCenterPage: true, height: double.infinity),
  );
}

// import 'dart:developer';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:islami/core/utils/app_assets.dart';
// import 'package:islami/feature/Hadeth/model/hadeth_data_model.dart';
// import 'package:islami/feature/Hadeth/widget/hadeth_widget.dart';

// class HadethScreen extends StatefulWidget {
//   const HadethScreen({super.key});

//   @override
//   State<HadethScreen> createState() => _HadethScreenState();
// }

// class _HadethScreenState extends State<HadethScreen> {
//   List<HadethDataModel> hadeeths = [];
//   String content = "";

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     readHadethFile();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.red,
//         image: DecorationImage(
//           image: AssetImage(AppAssets.imgHadethBg),
//           fit: BoxFit.fill,
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Image.asset(AppAssets.islamiLogo),
//           Expanded(child: buildHadethCarousel()),
//         ],
//       ),
//     );
//   }

//   buildHadethCarousel() => CarouselSlider.builder(
//     itemCount: hadeeths.length,
//     itemBuilder: (context, index, realindex) {
//       return HadethWidget(
//         hadethDataModel: HadethDataModel(
//           title: hadeeths[index].title,
//           hadeth: hadeeths[index].hadeth,
//         ),
//       );
//     },
//     options: CarouselOptions(enlargeCenterPage: true, height: double.infinity),
//   );
//   readHadethFile() async {
//     List<String> lines;
//     for (int i = 1; i <= 50; i++) {
//       String fileName = "asset/files/hadeeth/h${i}.txt";
//       content = await rootBundle.loadString(fileName);
//       lines = content.split("\n");
//       hadeeths.add(
//         HadethDataModel(title: lines[0], hadeth: lines.sublist(1).join("\n")),
//       );
//     }
//     print("Hadtheds:$hadeeths");
//     setState(() {});
//   }
// }
