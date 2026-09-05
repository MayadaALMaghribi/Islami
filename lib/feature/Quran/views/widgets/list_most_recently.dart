import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_constants.dart';
import 'package:islami/feature/Quran/views/model/most_recently_sura_dm.dart';
import 'package:islami/feature/Quran/views/model/sura_data_model.dart';
import 'package:islami/feature/Quran/views/widgets/build_card_most_recently.dart';

class ListMostRecently extends StatelessWidget {
  const ListMostRecently({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,

      itemCount: 12,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 6),
          child: BuildCardMostRecently(
            sura: suras[index + 3],
            mostSuraDM: MostRecentlySuraDM(
              suraNameAr: suras[index + 3].suraNameAr,
              suraNameEn: suras[index + 3].suraNameEn,
              verses: suras[index].verses,
            ),
          ),
        );
      },
    );
  }
}
