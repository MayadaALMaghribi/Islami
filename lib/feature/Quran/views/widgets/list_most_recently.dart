import 'package:flutter/material.dart';
import 'package:islami/core/cache/cache_function.dart';
import 'package:islami/core/utils/app_constants.dart';
import 'package:islami/core/utils/app_routes.dart';
import 'package:islami/feature/Quran/views/model/sura_data_model.dart';
import 'package:islami/feature/Quran/views/widgets/build_card_most_recently.dart';

class ListMostRecently extends StatefulWidget {
  const ListMostRecently({super.key});

  @override
  State<ListMostRecently> createState() => ListMostRecentlyState();
}

class ListMostRecentlyState extends State<ListMostRecently> {
  List<String> surasMostRecently = [];
  List<SuraDataModel> allSurars = [];
  @override
  void initState() {
    super.initState();
    getAllSuras();
  }

  @override
  Widget build(BuildContext context) {
    allSurars = suras.where((element) {
      return surasMostRecently.contains(element.numberOfSura);
    }).toList();
    return ListView.builder(
      scrollDirection: Axis.horizontal,

      itemCount: allSurars.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 6),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                AppRoutes.detailsSuraPage(allSurars[index]),
              );
            },
            child: BuildCardMostRecently(sura: allSurars[index]),
          ),
        );
      },
    );
  }

  getAllSuras() async {
    surasMostRecently = await getSuraListPrefs();
    setState(() {});
  }
}
// getSuraListPrefs() async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   surasMostRecently =
//       await prefs.getStringList(AppConstants.mostRecently) ?? [];

// }

// mostSuraDM: MostRecentlySuraDM(
//   suraNameAr: suras[index + 3].suraNameAr,
//   suraNameEn: suras[index + 3].suraNameEn,
//   verses: suras[index].verses,
// ),
