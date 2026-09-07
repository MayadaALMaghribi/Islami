import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/feature/Quran/views/model/sura_data_model.dart';
import 'package:islami/feature/Quran/views/widgets/list_most_recently.dart';
import 'package:islami/feature/Quran/views/widgets/widget_sura.dart';
import '../../../core/utils/app_constants.dart';

class QranScreen extends StatefulWidget {
  const QranScreen({super.key});

  @override
  State<QranScreen> createState() => _QranScreenState();
}

class _QranScreenState extends State<QranScreen> {
  List<SuraDataModel> suraSearch = [];
  TextEditingController _controller = TextEditingController();
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
          children: [
            Image.asset(AppAssets.islamiLogo),
            buildSearchQuran(),
            SizedBox(height: 20),
            Text("Most Recently", style: AppTextStyles.white16Bold),
            SizedBox(height: 10),
            SizedBox(height: 150, child: ListMostRecently()),
            SizedBox(height: 10),
            Text("Suras List", style: AppTextStyles.white16Bold),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemBuilder: (_, index) {
                  return WidgetSura(
                    sura: suraSearch.isEmpty && _controller.text.trim().isEmpty
                        ? suras[index]
                        : suraSearch[index],
                  );
                },
                separatorBuilder: (_, index) {
                  return Divider();
                },
                itemCount: suraSearch.isEmpty && _controller.text.trim().isEmpty
                    ? suras.length
                    : suraSearch.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildSearchQuran() {
    return TextField(
      onChanged: (value) {
        searchSuraByName(value);
        print("text:   ${_controller.text}");
        print(" result ${suraSearch.toString()}");
        setState(() {});
      },

      controller: _controller,
      cursorColor: AppColors.gold,
      style: AppTextStyles.white16Bold,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            _controller.clear();
            suraSearch = [];
          },
          icon: Icon(Icons.clear, color: AppColors.gold),
        ),
        hint: Row(
          children: [
            Image.asset(AppAssets.icQuran, color: AppColors.gold),
            SizedBox(width: 16),
            Text("Sura Name"),
          ],
        ),
        hintStyle: AppTextStyles.white16Bold,
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

  searchSuraByName(String suraName) {
    suraSearch = suras.where((test) {
      return test.suraNameAr.contains(suraName) ||
          test.suraNameEn.toLowerCase().contains(suraName.toLowerCase());
    }).toList();
  }
}
// // import 'package:flutter/material.dart';
// import 'package:islami/core/utils/app_assets.dart';
// import 'package:islami/core/utils/app_colors.dart';
// import 'package:islami/core/utils/app_text_styles.dart';

// import 'package:islami/feature/Quran/views/model/sura_data_model.dart';
// import 'package:islami/feature/Quran/views/widgets/list_most_recently.dart';

// import 'package:islami/feature/Quran/views/widgets/widget_sura.dart';

// import '../../../core/utils/app_constants.dart';

// class QranScreen extends StatefulWidget {
//   const QranScreen({super.key});

//   @override
//   State<QranScreen> createState() => _QranScreenState();
// }

// class _QranScreenState extends State<QranScreen> {
//   List<SuraDataModel> suraSearch = [];
//   TextEditingController _controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(AppAssets.imgQuranBackground),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: CustomScrollView(
//           slivers: [
//             SliverToBoxAdapter(child: Image.asset(AppAssets.islamiLogo)),
//             buildSearchQuran(),
//             SliverToBoxAdapter(child: SizedBox(height: 20)),
//             SliverToBoxAdapter(
//               child: Text("Most Recently", style: AppTextStyles.white16Bold),
//             ),
//             SliverToBoxAdapter(child: SizedBox(height: 10)),
//             SliverToBoxAdapter(
//               child: SizedBox(height: 150, child: ListMostRecently()),
//             ),
//             SliverToBoxAdapter(child: SizedBox(height: 10)),
//             SliverToBoxAdapter(
//               child: Text("Suras List", style: AppTextStyles.white16Bold),
//             ),
//             SliverToBoxAdapter(child: SizedBox(height: 10)),
//             SliverList.separated(
//               itemBuilder: (_, index) {
//                 return WidgetSura(
//                   sura: suraSearch.isEmpty ? suras[index] : suraSearch[index],
//                 );
//               },
//               separatorBuilder: (_, index) {
//                 return Divider();
//               },
//               itemCount: suraSearch.isEmpty ? suras.length : suraSearch.length,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   buildSearchQuran() {
//     return SliverToBoxAdapter(
//       child: TextField(
//         onChanged: (value) {
//           searchSuraByName(value);
//           print("text:   ${_controller.text}");
//           print(" result ${suraSearch.toString()}");
//           setState(() {});
//         },

//         controller: _controller,
//         cursorColor: AppColors.gold,
//         style: AppTextStyles.white16Bold,
//         decoration: InputDecoration(
//           suffixIcon: IconButton(
//             onPressed: () {
//               _controller.clear();
//               suraSearch = [];
//             },
//             icon: Icon(Icons.clear, color: AppColors.gold),
//           ),
//           hint: Row(
//             children: [
//               Image.asset(AppAssets.icQuran, color: AppColors.gold),
//               SizedBox(width: 16),
//               Text("Sura Name"),
//             ],
//           ),
//           hintStyle: AppTextStyles.white16Bold,
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             borderSide: BorderSide(color: AppColors.gold),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             borderSide: BorderSide(color: AppColors.gold),
//           ),
//         ),
//       ),
//     );
//   }

//   searchSuraByName(String suraName) {
//     suraSearch = suras.where((test) {
//       return test.suraNameAr.contains(suraName) ||
//           test.suraNameEn.toLowerCase().contains(suraName.toLowerCase());
//     }).toList();
//   }
// }
