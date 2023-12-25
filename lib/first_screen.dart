import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thakurgaonbarta/home_screen.dart';
import 'package:thakurgaonbarta/app/screens/post/ditals_post.dart';
import 'package:thakurgaonbarta/app/screens/post/view_your_allpost.dart';

import 'app/customs/drawer_screen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  List tablist = [
    "স্বাস্থ্য",
    "শিক্ষা",
    "বিনোদন",
    "ক্রয়-বিক্রয়",
    "অন্যান্য",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        backgroundColor: const Color(0xffECECEC),
        //  drawer: const Drawer(),
        appBar: AppBar(
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
          //  backgroundColor: const Color(0xfffeef2fd),
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
          bottom: TabBar(
              splashBorderRadius: BorderRadius.circular(
                20,
              ),
              labelStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5),
              indicatorColor: Colors.black,

              // indicator: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Colors.white),
              labelColor: Colors.teal,
              // indicatorSize:,
              mouseCursor: SystemMouseCursors.allScroll,
              overlayColor: const MaterialStatePropertyAll(Colors.white),
              //indicatorWeight: 10.0,
              // splashFactory: NoSplash.splashFactory,
              //labelPadding: EdgeInsets.all(1),
              physics: const BouncingScrollPhysics(),
              unselectedLabelStyle: const TextStyle(
                  // backgroundColor: Colors.amber,
                  //fontStyle: FontStyle.italic,
                  ),

              //tabAlignment: AnimatedFractionallySizedBox(duration:Duration(20)),
              unselectedLabelColor: Colors.black,
              automaticIndicatorColorAdjustment: true,
              isScrollable: true,
              tabs: const [
                Tab(
                  child: Text(
                    "স্বাস্থ্য",
                    style: TextStyle(fontFamily: 'Paapri'),
                  ),
                ),
                Tab(
                  child: Text(
                    "শিক্ষা",
                    style: TextStyle(fontFamily: 'Paapri'),
                  ),
                ),
                Tab(
                  child: Text(
                    "বিনোদন",
                    style: TextStyle(fontFamily: 'Paapri'),
                  ),
                ),
                Tab(
                  child: Text(
                    "ক্রয় বিক্রয়",
                    style: TextStyle(fontFamily: 'Paapri'),
                  ),
                ),
                Tab(
                  child: Text(
                    "দুর্ঘটনা",
                    style: TextStyle(fontFamily: 'Paapri'),
                  ),
                ),
                Tab(
                  child: Text(
                    "নিয়োগ",
                    style: TextStyle(fontFamily: 'Paapri'),
                  ),
                ),
                Tab(
                  child: Text(
                    "অন্যান্য",
                    style: TextStyle(fontFamily: 'Paapri'),
                  ),
                ),
              ]),
        ),
        body: const TabBarView(children: [
          HomeScreen(),
          HomeScreen(),
          ViewYourpost(),
          ViewYourpost(),
          HomeScreen(),
          ViewYourpost(),
          HomeScreen(),
          HomeScreen(),
        ]),
      ),
    );
  }
}
