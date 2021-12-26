import 'package:get/get.dart';
import 'package:project_api/app/controllers/addCandidateController.dart';

class AddCandidateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddCandidateController>(
      () => AddCandidateController(),
    );
    // TODO: implement dependencies
  }
}
