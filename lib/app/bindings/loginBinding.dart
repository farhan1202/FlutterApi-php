import 'package:get/get.dart';
import 'package:project_api/app/controllers/loginController.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    // TODO: implement dependencies
  }
}
