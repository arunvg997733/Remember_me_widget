import 'package:flutter/material.dart';
import 'package:rememberme/base_class.dart';

final ValueNotifier<bool> isRememberme = ValueNotifier(false);
final TextEditingController mobileCtr = TextEditingController();
final TextEditingController passwordCtr = TextEditingController();

final String usename = "";
final String passWord = "";

function() {
  // copy in between this//

  // call in login success function //
  if (isRememberme.value == true) {
    Credentical().saveCredential(email: usename, passWord: passWord);
  } else {
    Credentical().deleteCredential();
  }
  // call in login success function //

  // call in login screen in init or buildWidget for getting initial value for set username and password //
  WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
    print("remember me working ---- ");
    mobileCtr.text = await Credentical().getUserName();
    passwordCtr.text = await Credentical().getPassWord();
    if (mobileCtr.text.isNotEmpty && passwordCtr.text.isNotEmpty) {
      isRememberme.value = true;
    }
  });
  // call in login screen in init or buildWidget for getting initial value for set username and password //

  // copy in between this//
}
