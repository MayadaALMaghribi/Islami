import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';

class SebaScreen extends StatelessWidget {
  const SebaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Image.asset(AppAssets.imgMostRecent));
  }
}
