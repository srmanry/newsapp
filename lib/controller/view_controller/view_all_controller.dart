import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ViewAllcontroller extends GetxController {
  var isloding = false.obs;
  viewallpost() async {
    try {
      isloding(true);
      http.Response response = await http.get(Uri.tryParse("")!);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
      }
    } catch (e) {
      print("Error while gettingn data is $e");
    } finally {
      isloding(false);
    }
  }
}
