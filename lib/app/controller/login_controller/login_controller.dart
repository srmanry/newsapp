import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:thakurgaonbarta/app/api_service/utils/api_url.dart';
import 'package:thakurgaonbarta/app/routes/app_pages.dart';

class Logincontroller extends GetxController {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  void validfrom() {
    if (emailcontroller.text.isEmail && passwordcontroller.text.isEmpty) {
      Get.snackbar("Please input  Your email", "ldjfj",
          backgroundColor: const Color.fromARGB(255, 236, 178, 174));
    } else {
      print("create your account");
    }
  }

  void uesrloginApi() async {
    try {
      final response = await post(
        Uri.parse(loginUser),
        body: {
          "username": emailcontroller.value.text,
          "password": passwordcontroller.value.text,
        },
      );
      var data = jsonDecode(response.body);
      print(response.statusCode);

      print(response);
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
        // Get.to(const FirstScreen());
        // Get.toNamed(Route.)
      } else {
        Get.snackbar("Please try agin", "Not create account",
            backgroundColor: const Color.fromARGB(255, 236, 178, 174));
      }

      {}
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
