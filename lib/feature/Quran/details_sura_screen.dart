import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:islami/feature/Quran/model/sura_data_model.dart';

class DetailsSuraScreen extends StatelessWidget {
  const DetailsSuraScreen({required this.sura, super.key});
  final SuraDataModel sura;
  @override
  Widget build(BuildContext context) {
    log(sura.numberOfSura);
    return Scaffold();
  }
}
