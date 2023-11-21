import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/view/login/register_screen.dart';
import '../screens/view/login/sign_screen.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  String? listtile;
  Widget? icons;
  Color? color;
  ProfileScreen({super.key, this.listtile, this.icons, this.color});
  var listTextstyle = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 200,
              color: const Color(0xfffEEF2FD),
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: CircleAvatar(
                      //  backgroundColor: Colors.white,
                      radius: 40,

                      foregroundImage: NetworkImage(
                          "https://media.istockphoto.com/id/1187643614/photo/the-whole-truth-and-nothing-but-the-truth-tv-reporter-presenting-the-news-outdoors-journalism.jpg?s=612x612&w=0&k=20&c=XGrZZho3zT5s5PfFsSKgriEPszJ2qsEb4LbcXlTjDVA="),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "User Name",
                      style: listTextstyle.copyWith(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Theme',
                    style: listTextstyle,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.toggle_off,
                        size: 35,
                      ))
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(const RegisterScreen());
              },
              child: ListTile(
                // leading: Icon(
                //   Icons.login,
                //   color: Colors.red,
                // ),
                title: Text(
                  "Signup",
                  style: listTextstyle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: InkWell(
                onTap: () {
                  Get.to(SignInScreen());
                },
                child: ListTile(
                  // leading: Icon(
                  //   Icons.login,
                  //   color: Colors.red,
                  // ),
                  title: Text(
                    "Login",
                    style: listTextstyle,
                  ),
                ),
              ),
            ),
            ListTile(
              // leading: Icon(
              //   Icons.login,
              //   color: Colors.red,
              // ),
              title: Text(
                "View all post",
                style: listTextstyle,
              ),
            ),
            // const ListTile(
            //   leading:  Icon(Icons.login,color: Colors.red,),
            //   title: Text("Login"),

            // ),
          ],
        ),
      ),
    );
  }
}
