import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:thakurgaonbarta/first_screen.dart';

class RegisterController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController gmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var selectedImage = Rxn<XFile>();

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      selectedImage.value = pickedImage;
    }
  }

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

      if (response.statusCode == 201) {
        Get.snackbar("Register Sucess", "Congratulations",
            backgroundColor: const Color.fromARGB(255, 191, 228, 192));

        Get.to(const FirstScreen());
      } else {
        Get.snackbar("Please try agin", "Not create account",
            backgroundColor: const Color.fromARGB(255, 236, 178, 174));
      }
    } catch (e) {
      Get.snackbar("Please try agin", "Have a problem",
          backgroundColor: const Color.fromARGB(255, 236, 178, 174));
    }
  }
}
