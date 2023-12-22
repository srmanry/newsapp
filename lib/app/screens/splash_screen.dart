import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:thakurgaonbarta/app/routes/app_pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    whereTogo();

    super.initState();
  }

  Future<void> whereTogo() async {
    var sharedPref = await SharedPreferences.getInstance();

    bool islogin = sharedPref.getBool("islogin") ?? false;
    Future.delayed(
      const Duration(seconds: 5),
      () {
        if (islogin) {
          Get.offAllNamed(Routes.FRIST_SCREEN);
        } else {
          Get.offAllNamed(Routes.LOGIN_VIEW);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/newslogo.png",
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "ঠাকুরগাঁও বার্তা",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
          )
        ],
      ),
    ));
  }
}
