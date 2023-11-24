import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:thakurgaonbarta/cetagorys/first_screen.dart';

class Logincontroller extends GetxController {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void uesrloginApi() async {
    try {
      final response = await post(
        Uri.parse("https://blog-api-indol.vercel.app/login"),
        body: {
          "username": emailcontroller.value.text,
          "password": passwordcontroller.value.text,
        },
      );
      var data = jsonDecode(response.body);
      print(response.statusCode);

      print(response);
      if (response.statusCode == 202) {
        Get.snackbar("login Sucess", "Congratulations",
            backgroundColor: const Color.fromARGB(255, 191, 228, 192));

        Get.to(const FirstScreen());
      } else {
        Get.snackbar("Please try agin", "Not create account");
      }

      {}
    } catch (e) {
      Get.snackbar("Please try agin", "Have a problem");
    }
  }
}
