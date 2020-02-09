import 'package:shared_preferences/shared_preferences.dart';

enableAppLock(bool enable) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setBool("applock", enable);
}

Future<bool> isAppLockEnabled() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getBool("applock");
}
