import 'package:get/get.dart';
import 'package:project_api/app/controllers/homeController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    // TODO: implement dependencies
  }
}
