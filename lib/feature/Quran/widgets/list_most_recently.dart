import 'package:flutter/material.dart';
import 'package:islami/feature/Quran/model/most_recently_sura_dm.dart';
import 'package:islami/feature/Quran/widgets/build_card_most_recently.dart';

class ListMostRecently extends StatelessWidget {
  const ListMostRecently({required this.mostRecentlySuraDM, super.key});
  final MostRecentlySuraDM mostRecentlySuraDM;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 12,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 6),
          child: BuildCardMostRecently(mostRecentlySuraDM),
        );
      },
    );
  }
}
