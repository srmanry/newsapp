import 'package:flutter/material.dart';
import 'package:thakurgaonbarta/customs/custom_textfild.dart';
import 'package:thakurgaonbarta/screens/style/colorstyle.dart';

import 'package:thakurgaonbarta/screens/style/textstyle.dart';

import '../../customs/custom_bottom.dart';

class CreatePostscreen extends StatelessWidget {
  const CreatePostscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: appbgColor,
      appBar: AppBar(
        backgroundColor: appbgColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title:
            Text("Create News", style: hedartext.copyWith(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                Container(
                  height: 200,
                  color: Colors.amber,
                  child: const Center(
                    child: Text("create post"),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Discription"),

                  maxLines: 20,
                  //decoration: InputDecoration(),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: CustomBottom(
                  text: Text(
                    "Post News",
                    style: bottontext.copyWith(color: Colors.white),
                    // selectionColor: Colors.amber,
                  ),
                  color: const Color(0xFF13414D),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
