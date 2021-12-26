import 'package:get/get.dart';
import 'package:project_api/app/bindings/homeBinding.dart';
import 'package:project_api/app/bindings/loginBinding.dart';
import 'package:project_api/app/bindings/registerBinding.dart';
import 'package:project_api/app/routes/app_route.dart';
import 'package:project_api/app/views/pages/intro/homePage.dart';
import 'package:project_api/app/views/pages/intro/loginPage.dart';
import 'package:project_api/app/views/pages/intro/registerPage.dart';

class AppPage {
  static const INITIAL = Routes.login;

  static final pages = [
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.register,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
