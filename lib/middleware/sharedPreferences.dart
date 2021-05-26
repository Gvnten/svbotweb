import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static setName(String userName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("xXx", userName);
  }

  static getValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userName = prefs.getString("xXx");
    return userName;
  }

  static setTempToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("tmptoken", token);
  }

  static getTempToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userName = prefs.getString("tmptoken");
    return userName;
  }

  static removeTempToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('tpmtoken');
  }

  static checkUser() async {
    if (await getValue() != null) {
      return true;
    }
    return false;
  }
}
