import 'package:get/get.dart';

class AuthRepo extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = Duration(minutes: 2);
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      "Authorization": "Bearer "
    };
    httpClient.addAuthenticator((request) async {
      request.headers.addAll(headers);
      return request as dynamic;
    });
  }

  Future<Response?> loginRepo({
    required String email,
    required String password,
  }) async {
    var data = FormData({'username': email, 'password': password});

    var headers = {'Authorization': 'Bearer '};

    try {
      var response = await post(
        'https://blog-api-indol.vercel.app/login',
        data,
      ).timeout(Duration(minutes: 1));

      print("Status Code ===>${response.statusCode} ");
      print("body ===>${response.body} ");
      print("headers ===>${response.request?.url} ");

      return response;
    } on Exception catch (error) {
      print(error);
      return null;
    }
  }
}
