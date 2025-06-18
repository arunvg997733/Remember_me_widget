import 'package:shared_preferences/shared_preferences.dart';

class Credentical {
  saveCredential({required String email, required String passWord}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setBool("rememberMe", true);
    prefs.setString("userName", email);
    prefs.setString("passWord", passWord);
  }

  deleteCredential() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setBool("rememberMe", false);
    prefs.setString("userName", "");
    prefs.setString("passWord", "");
  }

  Future<String> getUserName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final value = prefs.getString("userName");
    if (value != null) {
      return value;
    } else {
      return "";
    }
  }

  Future<String> getPassWord() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final value = prefs.getString("passWord");
    if (value != null) {
      return value;
    } else {
      return "";
    }
  }
}
