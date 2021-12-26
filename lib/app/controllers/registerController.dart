import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_api/app/data/providers/loginProvider.dart';

class RegisterController extends GetxController {
  TextEditingController? nobpC;
  TextEditingController? passwordC;
  TextEditingController? rePasswordC;
  TextEditingController? nameC;

  @override
  void onInit() {
    // TODO: implement onInit
    nobpC = TextEditingController();
    passwordC = TextEditingController();
    rePasswordC = TextEditingController();
    nameC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    nobpC?.dispose();
    passwordC?.dispose();
    rePasswordC?.dispose();
    nameC?.dispose();
    super.onClose();
  }

  void dialogError(String msg) {
    Get.defaultDialog(
      title: "Something went wrong",
      middleText: msg,
    );
  }

  void registerUser(
      String nobp, String password1, String password2, String nama) {
    if (nobp != '' && password1 != '' && password2 != '' && nama != '') {
      if (password1 == password2) {
        LoginProvider().registerUser(nobp, nama, password1).then((value) {
          var data = jsonDecode(value.body);
          if (data['STATUS'] == "200") {
            print(data['MESSAGE']);
            Get.back();
          } else {
            print(data['MESSAGE']);
          }
        });
      } else {
        dialogError("Confirmasi password tidak sama ");
      }
    } else {
      dialogError("Harap isi data");
    }
  }
}
