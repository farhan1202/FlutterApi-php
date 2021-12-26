import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_api/app/data/providers/loginProvider.dart';
import 'package:project_api/app/routes/app_route.dart';

class LoginController extends GetxController {
  TextEditingController? nobpC;
  TextEditingController? passwordC;

  void login(String nobp, String password) {
    if (nobp != '' && password != '') {
      LoginProvider().login(nobp, password).then((value) {
        var data = value.body;
        if (data['STATUS'] == "200") {
          print("mantap");
          Get.offNamed(Routes.home);
        } else {
          print(data["MESSAGE"]);
        }
      });
    } else {
      dialogError("Harap isi data");
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    nobpC = TextEditingController();
    passwordC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    nobpC?.dispose();
    passwordC?.dispose();
    super.onClose();
  }

  void dialogError(String msg) {
    Get.defaultDialog(
      title: "Something whent wrong",
      middleText: msg,
    );
  }
}
