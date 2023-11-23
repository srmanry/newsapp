import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'drawer_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(ProfileScreen());
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),

        centerTitle: true,
        //backgroundColor: Colors.white,
        // backgroundColor: Colors.red,
        backgroundColor: const Color(0xfffeef2fd),
        //   backgroundColor: const Color(0xfffF0F7FF),
        title: const Text(
          "ঠাকুরগাঁও বার্তা",
          style: TextStyle(
            fontSize: 24, color: Colors.red,
            //fontFamily: "NotoSansBengali"
            fontFamily: "Galada-Regular",
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
    ));
  }
}
