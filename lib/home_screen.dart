import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thakurgaonbarta/screens/view/newsditals.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      //   backgroundColor: Colors.red,
      //   centerTitle: true,
      //   title: const Text(
      //     "Thakurgaon Barta",
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: 50,
          //   child: ListView.builder(
          //       scrollDirection: Axis.horizontal,
          //       itemCount: 20,
          //       itemBuilder: (_, index) {
          //         return Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //               height: 10,
          //               decoration: BoxDecoration(
          //                   color: const Color.fromARGB(255, 227, 249, 228),
          //                   // borderRadius
          //                   // : BorderRadius.only(
          //                   //     topLeft: Radius.circular(98),
          //                   //     bottomLeft: Radius.circular(20))
          //                   borderRadius: BorderRadius.circular(5)),
          //               child: const Padding(
          //                 padding: EdgeInsets.symmetric(horizontal: 8.0),
          //                 child: Center(
          //                   child: Text(
          //                     "Category",
          //                     style: TextStyle(
          //                         fontSize: 16, fontWeight: FontWeight.bold),
          //                   ),
          //                 ),
          //               )),
          //         );
          //       }),
          // ),
          Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            //shape: BoxShape.circle
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xffDDDDDD),
                                blurRadius: 6.0,
                                spreadRadius: 2.0,
                                offset: Offset(0.0, 0.0),
                              ),
                            ]),
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                // height: 100,
                                width: 120,
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'assets/images/hortal.jpg',
                                    //height: 150,
                                    // fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // const Text(
                                    //   'হরতাল ঘিরে সারাদেশে ১১ যানবাহনে আগুন',
                                    //   style: TextStyle(
                                    //       fontSize: 16,
                                    //       fontWeight: FontWeight.bold,
                                    //       color: Colors.red),
                                    // ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.0, bottom: 10.0),
                                      child: Text(
                                        "বিভিন্ন জেলায় এসব যানবাহনে অগ্নিসংযোগ করা হয়",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "10/02/2024",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic),
                                        ),
                                        // TextButton(
                                        //     onPressed: () {
                                        //       Get.to(const NewsDitailsScreen());
                                        //     },
                                        //     child: const Text(
                                        //       'Read More',
                                        //       style: TextStyle(
                                        //           fontSize: 18,
                                        //           fontWeight: FontWeight.bold),
                                        //     )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
