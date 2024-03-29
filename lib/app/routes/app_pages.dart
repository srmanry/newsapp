import 'package:get/get.dart';
import 'package:thakurgaonbarta/app/customs/drawer_screen.dart';
import 'package:thakurgaonbarta/first_screen.dart';
import 'package:thakurgaonbarta/app/screens/login/register_screen.dart';
import 'package:thakurgaonbarta/app/screens/post/create_postScreen.dart';
import 'package:thakurgaonbarta/app/screens/splash_screen.dart';

import '../screens/login/login_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN_VIEW;

  static final routes = [
    GetPage(name: _Paths.SPLASH_SCREEN, page: () => const SplashScreen()),
    GetPage(name: _Paths.FRIST_SCREEN, page: () => FirstScreen()),
    GetPage(name: _Paths.LOGIN_VIEW, page: () => SignInScreen()),
    GetPage(name: _Paths.REGISTER_SCREEN, page: () => RegisterScreen()),
    GetPage(name: _Paths.CREATE_POST, page: () => CreatePostscreen()),
    GetPage(name: _Paths.BACK_DRAWER, page: () => ProfileScreen()),
    GetPage(name: _Paths.BACK_HOME, page: () => FirstScreen()),
  ];
}
