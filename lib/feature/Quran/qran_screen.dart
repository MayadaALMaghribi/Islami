import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_assets.dart';

class QranScreen extends StatelessWidget {
  const QranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Image.asset(AppAssets.imgQuranBackground));
  }
}
