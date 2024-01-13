// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:thakurgaonbarta/app/controller/login_controller/login_controller.dart';
// import 'package:thakurgaonbarta/app/controller/view_controller/view_all_controller.dart';

// import 'package:http/http.dart' as http;

// class ViewYourpost extends StatelessWidget {
//   ViewYourpost({super.key});

//   //ViewAllcontroller viewAllcontroller = Get.put(ViewAllcontroller());
//   // Future getpost() async {
//   //   final getposturl =
//   //       Uri.parse("https://blog-api-indol.vercel.app/get_all_random_blogs");
//   //   final response = await http.get(getposturl);
//   //   print(response.body);

//   //   return json.decode(response.body);
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Obx(() {
//         if (viewAllcontroller.isloding.value) {
//           return const Center(child: CircularProgressIndicator());
//         } else {
//           return ListView.builder(
//               itemCount: viewAllcontroller.postList.length,
//               itemBuilder: (_, index) {
//                 return ListTile(
//                   title: Text(viewAllcontroller.postList[index].title),
//                 );
//               });
//         }
//       }),
//     );
//   }
// }
