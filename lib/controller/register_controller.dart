import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:thakurgaonbarta/cetagorys/first_screen.dart';

class RegisterController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController gmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void uesrRegisterApi() async {
    try {
      final response = await post(
        Uri.parse("https://blog-api-indol.vercel.app/user_create"),
        body: {
          "full_name": nameController.value.text,
          "email": gmailController.value.text,
          "password": passwordController.value.text,
        },
      );
      var data = jsonDecode(response.body);
      print(response.statusCode);

      print(response);
      if (response.statusCode == 201) {
        Get.snackbar("Register Sucess", "Congratulations",
            backgroundColor: Colors.red);

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
