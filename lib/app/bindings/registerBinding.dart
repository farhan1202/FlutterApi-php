import 'package:get/get.dart';
import 'package:project_api/app/controllers/registerController.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
    // TODO: implement dependencies
  }
}
