import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thakurgaonbarta/screens/view/newsditals.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          "Thakurgaon Barta",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 10,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 227, 249, 228),
                            // borderRadius
                            // : BorderRadius.only(
                            //     topLeft: Radius.circular(98),
                            //     bottomLeft: Radius.circular(20))
                            borderRadius: BorderRadius.circular(5)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Center(
                            child: Text(
                              "Category",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                  );
                }),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (_, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'News title',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8.0, bottom: 10.0),
                              child: Text("News subtitle"),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                  onPressed: () {
                                    Get.to(const NewsDitailsScreen());
                                  },
                                  child: const Text(
                                    'Read More',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
