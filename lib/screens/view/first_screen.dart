import 'package:flutter/material.dart';
import 'package:thakurgaonbarta/home_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text(
            "ঠাকুরগাঁও বার্তা",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
          bottom: TabBar(
              splashBorderRadius: BorderRadius.circular(
                20,
              ),
              labelStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              indicatorColor: Colors.black,

              // indicator: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Colors.white),
              labelColor: Colors.white,
              // indicatorSize:,
              mouseCursor: SystemMouseCursors.allScroll,
              overlayColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 231, 62, 62)),
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
              dividerColor: Colors.amber,

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
                  ),
                ),
                Tab(
                  child: Text(
                    "শিক্ষা",
                  ),
                ),
                Tab(
                  child: Text(
                    "খেলাধুলা",
                  ),
                ),
                Tab(
                  child: Text(
                    "ধর্ম",
                  ),
                ),
                Tab(
                  child: Text(
                    "রাজনীতি",
                  ),
                ),
                Tab(
                  child: Text(
                    "ক্রয় বিক্রয়",
                  ),
                ),
                Tab(
                  child: Text(
                    "তথ্য প্রযুক্তি",
                  ),
                ),
                Tab(
                  child: Text(
                    "আন্তজাতীক",
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
