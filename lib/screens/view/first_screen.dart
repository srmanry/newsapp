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
          bottom: const TabBar(
              labelColor: Colors.green,
              // indicatorColor: Colors.green,
              //indicatorWeight: 10.0,
              // splashBorderRadius: BorderRadius.all(Radius.circular()),

              //  labelColor: Colors.green,
              //indicatorPadding: EdgeInsets.all(20),
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    "স্বাস্থ্য",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "শিক্ষা",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "খেলাধুলা",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "ধম",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "রাজনীতি",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "বাজার",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "তথ্য প্রযুক্তি",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "আন্তজাতীক",
                    style: TextStyle(fontSize: 16, color: Colors.white),
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
