import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:thakurgaonbarta/app/ripo/login_ripo.dart';
import 'package:thakurgaonbarta/app/routes/app_pages.dart';

class Logincontroller extends GetxController {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  var isloading = false.obs;
  AuthRepo authRepo = Get.put(AuthRepo());

  void uesrloginApi() async {
    try {
      var response = await authRepo.loginRepo(
          email: emailcontroller.text.trim(),
          password: passwordcontroller.text);

      if (response != null) {
        var data = jsonDecode(response.body);

        if (response.statusCode == 202) {
          SharedPreferences sharedPreferences =
              await SharedPreferences.getInstance();
          String accessToken = data["access_token"];
          print(accessToken);
          await sharedPreferences.setString("token", accessToken);

          //String gettoken =  sharedPreferences.getString("token")??"";
          await sharedPreferences.setBool("islogin", true);

          Get.snackbar("login Sucess", "Congratulations",
              backgroundColor: const Color.fromARGB(255, 191, 228, 192));
          Get.offAllNamed(Routes.FRIST_SCREEN);
        } else {
          print(response.statusCode);
          Get.snackbar("Please try agin", "Not create account",
              backgroundColor: const Color.fromARGB(255, 236, 178, 174));
        }
      }
    } catch (e) {
      Get.snackbar("Please try agin", "Have a problem",
          backgroundColor: const Color.fromARGB(255, 236, 178, 174));
    }
  }

// Using shared preferences

  Future sharedpreferences() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var saveEmail =
        sharedPreferences.setString("username", emailcontroller.value.text);
    var savePassword = sharedPreferences.setString(
      "password",
      passwordcontroller.value.text,
    );
    var finalemail = saveEmail;
    var finalpassword = savePassword;
    print(
      saveEmail,
    );
    print(savePassword);
    print("sharedpreferences");
  }
}
