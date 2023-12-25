import 'package:flutter/material.dart';
import 'package:thakurgaonbarta/app/screens/style/textstyle.dart';

class HelthNews extends StatelessWidget {
  const HelthNews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                          border: Border.all(width: 1, color: Colors.black)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/i.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "User Name",
                      style: bodytext,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "বাংলাদেশ দক্ষিণ এশিয়ার একটি সার্বভৌম রাষ্ট্র",
                  style: bodytext,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset("assets/images/bg.jpg"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Icon(Icons.visibility),
                    Text(
                      "1/2/2024",
                      style: bodytext,
                    ),
                    Text(
                      "Rede more",
                      style: bodytext,
                    ),
                    //Icon(Icons.arrow_forward),
                  ],
                )
              ],
            ),
          );
        });
  }
}
