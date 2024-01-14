import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thakurgaonbarta/home_screen.dart';

import 'app/cetagorys/helth.dart';
import 'app/customs/drawer_screen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  var tabfontstyle = const TextStyle(fontFamily: 'Paapri');

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
      length: 7,
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
              indicatorPadding: EdgeInsets.zero,
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
              //overlayColor: const MaterialStatePropertyAll(Colors.white),
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
              tabs: [
                Tab(
                  child: Text(
                    "স্বাস্থ্য",
                    style: tabfontstyle,
                  ),
                ),
                Tab(
                  child: Text(
                    "শিক্ষা",
                    style: tabfontstyle,
                  ),
                ),
                Tab(
                  child: Text(
                    "বিনোদন",
                    style: tabfontstyle,
                  ),
                ),
                Tab(
                  child: Text(
                    "ক্রয় বিক্রয়",
                    style: tabfontstyle,
                  ),
                ),
                Tab(
                  child: Text(
                    "দুর্ঘটনা",
                    style: tabfontstyle,
                  ),
                ),
                Tab(
                  child: Text(
                    "নিয়োগ",
                    style: tabfontstyle,
                  ),
                ),
                Tab(
                  child: Text(
                    "অন্যান্য",
                    style: tabfontstyle,
                  ),
                ),
              ]),
        ),
        body: const TabBarView(children: [
          HomeScreen(),
          HelthNews(),
          // ViewYourpost(),
          //ViewYourpost(),
          HomeScreen(),
          //ViewYourpost(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
        ]),
      ),
    );
  }
}
