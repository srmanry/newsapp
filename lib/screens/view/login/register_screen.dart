import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../customs/custom_textfild.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                  const CustomTextfild(
                    //focusColor: Colors.red,
                    hinText: "name",
                    prifixIcon: Icon(Icons.person),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: CustomTextfild(
                      // focusColor: Colors.red,
                      hinText: "Email",
                      prifixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  const CustomTextfild(
                    //focusColor: Colors.red,
                    hinText: "Email",
                    prifixIcon: Icon(Icons.visibility),
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
                      "Register",
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
