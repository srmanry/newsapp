import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thakurgaonbarta/app/controller/login_controller/login_controller.dart';
import 'package:thakurgaonbarta/app/customs/custom_textfild.dart';
import 'package:thakurgaonbarta/app/screens/login/register_screen.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var textStyle = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red);

  var passwordhide = true;

  Logincontroller loginContrller = Get.put(Logincontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        color: const Color(0xFFECECEC),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFFFFFF),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xFFFFFFFF),
                                blurRadius: 0,
                                //blurStyle: BlurStyle.inner,
                                spreadRadius: 1)
                          ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFFFFFFF),
                                width: 0.0,
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            hintText: "Password",
                            prefixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passwordhide = !passwordhide;
                                  });
                                },
                                icon: passwordhide
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility))),
                        obscureText: passwordhide,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                        ),
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
                        //loginContrller.validrom();
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

// void visibilityicon(){
//   if (passwordhide){
//         return Icon
//        }
// }