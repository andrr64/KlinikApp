import 'package:shared_preferences/shared_preferences.dart';

const String TOKEN = "token";
const String USER_ID = "userid";
const String USERNAME = "username";

class UserInfo {
  Future setToken(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(TOKEN, value);
  }


Future<String?> getToken() async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString(TOKEN);
}

Future setUserID(String value) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.setString(USER_ID, value);
}

Future<String> getUser() async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString(USER_ID).toString;
}

Future setUsername(String value) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.setString(USERNAME, value);
}

Future<String> getUsername() async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString(USERNAME).toString;
}

Future<void>() async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  pref.clear();
}
}