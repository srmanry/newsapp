import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:thakurgaonbarta/app/screens/post/ditals_post.dart';

import 'app/screens/style/textstyle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(width: 1, color: Colors.black)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/i.jpeg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "User Name",
                                    style: bodytext,
                                  ),
                                  Text(
                                    "1/2/2024",
                                    style: bodytext,
                                  ),
                                ],
                              ),
                              InkWell(
                                  onTap: () {
                                    Get.defaultDialog(
                                        title:
                                            "আপনি কি ডিলিট বা আপডেট করতে চান",
                                        content: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon:
                                                        const Icon(Icons.edit)),
                                                Text("এডিট"),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                        Icons.delete)),
                                                Text("মুছুন"),
                                              ],
                                            ),
                                          ],
                                        ));
                                  },
                                  child: const Icon(Icons.more_vert))
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "বাংলাদেশ দক্ষিণ এশিয়ার একটি সার্বভৌম রাষ্ট্র",
                      style: bodytext,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Image.asset("assets/images/ban.jpg"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Icon(Icons.visibility),
                        const Row(
                          children: [
                            Icon(Icons.favorite_border),
                            SizedBox(
                              width: 10,
                            ),
                            Text("25"),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const NewsDitailsScreen());
                          },
                          child: Text(
                            "Rede more",
                            style: bodytext,
                          ),
                        ),
                        //Icon(Icons.arrow_forward),
                      ],
                    ),
                  ],
                ),
              );
            }));
  }
}
