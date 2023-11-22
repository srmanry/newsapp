import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thakurgaonbarta/home_screen.dart';
import 'package:thakurgaonbarta/screens/view/newsditals.dart';

import '../../customs/profilepage.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        //  drawer: const Drawer(),
        appBar: AppBar(
          // elevation: 100,
          // leading: Builder(
          //     builder: (context) => IconButton(
          //         onPressed: () {
          //            return Scaffold.of(context).openDrawer(

          //            );
          //           Get.to(const NewsDitailsScreen());
          //         },
          //         icon: const Icon(
          //           Icons.home,
          //           color: Colors.white,
          //         ))),

          //*****************************
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
          backgroundColor: Color(0xfffEEF2FD),
          //   backgroundColor: const Color(0xfffF0F7FF),
          title: const Text(
            "ঠাকুরগাঁও বার্তা",
            style: TextStyle(
              fontSize: 24, color: Colors.red,
              //fontFamily: "NotoSansBengali"
              fontFamily: "Galada-Regular",
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
              labelColor: Colors.green,
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
              // dividerColor: Colors.amber,

              // indicatorColor: Colors.green,
              //indicatorWeight: 10.0,
              // splashBorderRadius: BorderRadius.all(Radius.circular()),

              //  labelColor: Colors.green,
              //indicatorPadding: EdgeInsets.all(20),
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
                    "খেলাধুলা",
                    style: TextStyle(fontFamily: 'Paapri'),
                  ),
                ),
                Tab(
                  child: Text(
                    "ধর্ম",
                    style: TextStyle(fontFamily: 'Paapri'),
                  ),
                ),
                Tab(
                  child: Text(
                    "রাজনীতি",
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
                    "তথ্য প্রযুক্তি",
                    style: TextStyle(fontFamily: 'Paapri'),
                  ),
                ),
                Tab(
                  child: Text(
                    "আন্তজাতীক",
                    style: TextStyle(fontFamily: 'Paapri'),
                  ),
                ),
              ]),
        ),
        body: const TabBarView(children: [
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
        ]),
      ),
    );
  }
}
