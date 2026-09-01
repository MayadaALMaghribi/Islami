import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';

class HadethScreen extends StatelessWidget {
  const HadethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Image.asset(AppAssets.imgHadethBg));
  }
}
