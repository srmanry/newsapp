import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thakurgaonbarta/customs/custom_textfild.dart';
import 'package:thakurgaonbarta/screens/view/login/login_screen.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  var textStyle = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 240, 227, 226),
          Colors.white,
        ], end: Alignment.topCenter, begin: Alignment.center)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                      // height: 250,
                      ),
                  Image.asset("assets/images/barta.png",
                      width: 200, fit: BoxFit.cover),
                  // const Spacer(),
                  // const Text(
                  //   "Wellcome To Thakurgaon Barta",
                  //   style: TextStyle(fontSize: 24, color: Colors.red),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextfild(
                    hinText: "Email",
                    prifixIcon: Icon(Icons.email_outlined),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const CustomTextfild(
                    hinText: "Email",
                    prifixIcon: Icon(Icons.visibility),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10),
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
                            Get.to(const RegisterScreen());
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
                  Container(
                    height: 45,
                    // width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.teal),
                    child: const Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
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
