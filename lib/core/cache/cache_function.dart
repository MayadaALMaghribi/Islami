import 'package:islami/core/utils/app_constants.dart';
import 'package:islami/feature/Quran/views/model/sura_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

saveSuraPrefs({required SuraDataModel sura}) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> surasMostRecently =
      prefs.getStringList(AppConstants.mostRecently) ?? [];
  surasMostRecently.add(sura.numberOfSura);
  surasMostRecently = surasMostRecently.toSet().toList();
  await prefs.setStringList(AppConstants.mostRecently, surasMostRecently);
}

Future<List<String>> getSuraListPrefs() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  return prefs.getStringList(AppConstants.mostRecently) ?? [];
}
