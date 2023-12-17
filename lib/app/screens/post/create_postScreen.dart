import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thakurgaonbarta/app/controller/postcontroller/post_controller.dart';

import 'package:thakurgaonbarta/app/screens/style/colorstyle.dart';

import 'package:thakurgaonbarta/app/screens/style/textstyle.dart';

import '../../customs/custom_bottom.dart';

class CreatePostscreen extends StatelessWidget {
  CreatePostscreen({super.key});
  PostController postcontroller = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: appbgColor,
      appBar: AppBar(
        backgroundColor: const Color(0xffECECEC),
        //backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("খবর তৈরি করুন",
            style: hedartext.copyWith(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            DropdownButtonFormField(
                hint: Text("নির্বাচন করুন"),
                value: null,
                items: [
                  DropdownMenuItem(
                    value: "খেলাধুলা",
                    child:
                        TextButton(onPressed: () {}, child: Text("খেলাধুলা")),
                  ),
                  DropdownMenuItem(
                    value: "শিক্ষা",
                    child: TextButton(onPressed: () {}, child: Text("শিক্ষা")),
                  ),
                  DropdownMenuItem(
                    value: "বিনোদন",
                    child: TextButton(onPressed: () {}, child: Text("বিনোদন")),
                  ),
                ],
                onChanged: (vel) {}),
            Expanded(
                child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Obx(() {
                  final selectedImage = postcontroller.selectedImage.value;
                  return selectedImage != null
                      ? SizedBox(
                          height: 250,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            //clipBehavior: Clip.none,
                            child: Image.file(
                              File(selectedImage.path),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : Center(
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/camera.png",
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TextButton(
                                onPressed: postcontroller.pickImage,
                                child: Text(
                                  " ছবি নির্বাচন করুন ",
                                  style: enbodytext,
                                )),
                          ],
                        ));
                }),
                const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "শিরোনাম লিখুন :"),

                  maxLines: 3,
                  //decoration: InputDecoration(),
                ),
                const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "বিস্তারিত লিখুন :"),

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
                    "পাবলিশ করুন",
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
