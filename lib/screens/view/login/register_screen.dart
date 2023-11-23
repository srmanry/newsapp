import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thakurgaonbarta/controller/register_controller.dart';

import '../../../customs/custom_textfild.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF2FD),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Form(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 1.5, color: Colors.red),
                          color: Colors.white),
                      // child: const CircleAvatar(
                      //   radius: 50,
                      //   backgroundColor: Colors.white,
                      // ),
                    ),
                    Positioned(
                      top: 40,
                      //bottom: 30,
                      // right: 10,
                      left: 80,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.photo_camera,
                            color: Colors.black,
                          )),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Pick Images",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextfild(
                  //focusColor: Colors.red,
                  controller: controller.nameController,
                  hinText: "name",
                  prifixIcon: const Icon(Icons.person),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: CustomTextfild(
                    controller: controller.gmailController,
                    // focusColor: Colors.red,
                    hinText: "Email",
                    prifixIcon: const Icon(Icons.email_outlined),
                  ),
                ),
                CustomTextfild(
                  controller: controller.passwordController,
                  //focusColor: Colors.red,
                  hinText: "Password",
                  prifixIcon: const Icon(Icons.visibility),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    controller.uesrRegisterApi();
                    print("register");
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
