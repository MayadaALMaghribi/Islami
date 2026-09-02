import 'package:flutter/material.dart';
import 'package:islami/feature/Quran/model/sura_data_model.dart';
import 'package:islami/feature/Quran/widgets/widget_sura.dart';

class WidgetListViewSura extends StatelessWidget {
  const WidgetListViewSura({required this.sura, super.key});
  final SuraDataModel sura;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) {
        return WidgetSura(sura: sura);
      },
      separatorBuilder: (_, index) {
        return Divider();
      },
      itemCount: 100,
    );
  }
}
