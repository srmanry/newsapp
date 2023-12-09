import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thakurgaonbarta/controller/login_controller/login_controller.dart';
import 'package:thakurgaonbarta/customs/custom_textfild.dart';
import 'package:thakurgaonbarta/screens/login/register_screen.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  var textStyle = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red);
  Logincontroller loginContrller = Get.put(Logincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        color: const Color(0xFFECECEC),
        // color: const Color(0xffE4E1E3), ECECEC
        //  color: const Color.fromARGB(255, 240, 238, 238),
        //color: const Color(0xFFEEF2FD),
        // color: const Color(0xfffF0F7FF),
        // color: Color(0xfffABE5CF),
        // color: Color(0xfffF0F7FF),
        //color: Color(0xfffC5E1F6),
        //color: Color(0xfffE24F96),
        //color: Color(0xfffEAB1CC),
        // decoration: const BoxDecoration(
        //     gradient: LinearGradient(colors: [
        //   Color.fromARGB(255, 240, 227, 226),
        //   Colors.white,
        // ], end: Alignment.topCenter, begin: Alignment.center)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Form(
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    "assets/images/login.png",
                    width: 200,
                    height: 200,
                  ),
                  // const Spacer(),
                  // const Text(
                  //   "Wellcome To Thakurgaon Barta",
                  //   style: TextStyle(fontSize: 24, color: Colors.red),
                  // ),
                  const SizedBox(
                    height: 20,
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
                  CustomTextfild(
                    controller: loginContrller.emailcontroller,
                    focusColor: Colors.red,
                    hinText: "Email",
                    prifixIcon: const Icon(Icons.email_outlined),
                  ),
                  const SizedBox(
                    height: 3.0,
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
                    controller: loginContrller.passwordcontroller,
                    hinText: "Password",
                    prifixIcon: const Icon(Icons.visibility),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Forget Password ?",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(RegisterScreen());
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () {
                        loginContrller.uesrloginApi();
                        print("Login botton");
                      },
                      child: Container(
                        height: 45,
                        // width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF13414D)),
                        child: const Center(
                            child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
