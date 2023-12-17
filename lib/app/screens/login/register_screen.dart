import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/router_report.dart';
import 'package:thakurgaonbarta/app/controller/login_controller/register_controller.dart';
import 'package:thakurgaonbarta/app/routes/app_pages.dart';
import 'package:thakurgaonbarta/app/screens/style/textstyle.dart';

import '../../customs/custom_textfild.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  RegisterController registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECECEC),
      // backgroundColor: const Color(0xFFEEF2FD),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Form(
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            Get.toNamed(Routes.BACK_DRAWER);
                          },
                          child: const Icon(Icons.arrow_back)),
                      // SizedBox(
                      //   width: 20,
                      // ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Register Now",
                            style: enhedartext,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Obx(() {
                  final selectedImage = registerController.selectedImage.value;
                  return selectedImage != null
                      ? SizedBox(
                          height: 250,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            //clipBehavior: Clip.none,
                            child: Image.file(
                              File(selectedImage.path),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : Center(
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/camera.png",
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TextButton(
                                onPressed: registerController.pickImage,
                                child: Text(
                                  " Import your image ",
                                  style: enbodytext,
                                )),
                          ],
                        ));
                }),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Name", style: enbodytext),
                ),
                CustomTextfild(
                  //focusColor: Colors.red,
                  controller: registerController.nameController,
                  hinText: "name",
                  prifixIcon: const Icon(Icons.person),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Email",
                    style: enbodytext,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: CustomTextfild(
                    controller: registerController.gmailController,
                    // focusColor: Colors.red,
                    hinText: "Email",
                    prifixIcon: const Icon(Icons.email_outlined),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Password", style: enbodytext),
                ),
                CustomTextfild(
                  controller: registerController.passwordController,
                  //focusColor: Colors.red,
                  hinText: "Password",
                  prifixIcon: const Icon(Icons.visibility),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    registerController.uesrRegisterApi();
                  },
                  child: Container(
                    height: 45,
                    // width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF13414D)),
                    child: Center(
                        child: Text("Register",
                            style: enbottontext.copyWith(
                                color: Colors.white, letterSpacing: 1.5))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
