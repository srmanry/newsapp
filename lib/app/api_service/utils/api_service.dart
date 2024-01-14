// import "dart:convert";

// import "package:http/http.dart" as http;
// import "package:thakurgaonbarta/app/api_service/utils/api_url.dart";
// import "package:thakurgaonbarta/app/models/view_model.dart";

// class ApiService {
//   static var client = http.Client();
//   Future<List<Viewpostmodel>> facePost() async {
//    // final response = await http.get(Uri.parse(getallUserpost));
//     if (response.statusCode == 200) {
//       // final parsed = jsonDecode(response.body);
//       var jsonString = response.body;
//       return viewpostmodelFromJson(jsonString);

//       // return parsed
//       //     .map<Viewpostmodel>((json) => Viewpostmodel.fromJson(json))
//       //     .toList();
//     } else {
//       throw Exception("Failed to load data ");
//     }
//   }
// }
