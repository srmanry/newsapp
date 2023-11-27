import 'package:get/get.dart';
import 'package:thakurgaonbarta/first_screen.dart';
import 'package:thakurgaonbarta/screens/login/register_screen.dart';

import '../screens/login/sign_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FRIST_SCREEN;

  static final routes = [
    GetPage(name: _Paths.FRIST_SCREEN, page: () => const FirstScreen()),
    GetPage(name: _Paths.LOGIN_VIEW, page: () => SignInScreen()),
    GetPage(name: _Paths.REGISTER_SCREEN, page: () => RegisterScreen()),
  ];
}
