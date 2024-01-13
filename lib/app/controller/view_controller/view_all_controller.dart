// import 'dart:convert';

// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:thakurgaonbarta/app/api_service/utils/api_service.dart';
// import 'package:thakurgaonbarta/app/models/view_model.dart';

// class ViewAllcontroller extends GetxController {
//   var isloding = false.obs;
//   var postList = <Viewpostmodel>[].obs;
//   @override
//   void onInit() {
//     viewallpost();
//     super.onInit();
//   }

//   viewallpost() async {
//     try {
//       isloding(true);
//       var post = await ApiService().facePost();
//       // http.Response response = await http.get(Uri.tryParse(
//       //     "https://blog-api-indol.vercel.app/get_all_random_blogs")!);

//       if (post != null) {
//         postList.assignAll(post);
//       }
//     } catch (e) {
//       print("Error while gettingn data is $e");
//     } finally {
//       isloding(false);
//     }
//   }
// }
