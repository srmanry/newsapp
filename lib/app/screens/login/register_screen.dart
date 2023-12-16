import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thakurgaonbarta/app/controller/login_controller/register_controller.dart';

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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back),
                      // SizedBox(
                      //   width: 20,
                      // ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Register Now",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                Obx(() {
                  final selectedImage = registerController.selectedImage.value;
                  return selectedImage != null
                      ? SizedBox(
                          height: 200,
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
                          child: TextButton(
                              onPressed: registerController.pickImage,
                              child: const Text(
                                " Import your image ",
                                style:
                                    TextStyle(color: Colors.teal, fontSize: 15),
                              )));
                }),
                // Stack(
                //   clipBehavior: Clip.none,
                //   children: [
                //     Container(
                //       height: 100,
                //       width: 100,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(50),
                //           border: Border.all(width: 1.5, color: Colors.red),
                //           color: Colors.white),
                //       // child: const CircleAvatar(
                //       //   radius: 50,
                //       //   backgroundColor: Colors.white,
                //       // ),
                //     ),
                //     Positioned(
                //       top: 40,
                //       //bottom: 30,
                //       // right: 10,
                //       left: 80,
                //       child: IconButton(
                //           onPressed: () {},
                //           icon: const Icon(
                //             Icons.photo_camera,
                //             color: Colors.black,
                //           )),
                //     )
                //   ],
                // ),
                // const Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: Text(
                //     "Pick Images",
                //     style: TextStyle(
                //         fontSize: 18,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.purple),
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                CustomTextfild(
                  //focusColor: Colors.red,
                  controller: registerController.nameController,
                  hinText: "name",
                  prifixIcon: const Icon(Icons.person),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
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
                    child: const Center(
                        child: Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
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
