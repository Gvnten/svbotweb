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

  static checkUser() async {
    if (await getValue() != null) {
      //print(await getValue());
      return true;
    }
    return false;
  }
}
