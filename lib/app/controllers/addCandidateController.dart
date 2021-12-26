import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_api/app/data/providers/loginProvider.dart';
import 'package:project_api/app/routes/app_route.dart';

class AddCandidateController extends GetxController {
  TextEditingController? namaC;
  TextEditingController? nobpC;
  TextEditingController? jurusanC;
  TextEditingController? keteranganC;

  Future<void> addCandidate(
      String nama, String nobp, String jurusan, String keterangan) async {
    if (nobp != '' && nama != '' && jurusan != '' && keterangan != '') {
      LoginProvider().addCandidate(nama, nobp, jurusan, keterangan).then(
        (value) {
          var data = value.body;
          print(data['STATUS']);
          if (data['STATUS'] == "200") {
            Get.offNamed(Routes.home);
            print(data['MESSAGE']);
          } else {
            print(data['MESSAGE']);
          }
        },
      );
    } else {
      getMessage("Data tidak boleh kosong");
    }
  }

  void getMessage(String msg) {
    Get.defaultDialog(
      title: "Something went wrong",
      middleText: msg,
    );
  }

  @override
  void onInit() {
    namaC = TextEditingController();
    nobpC = TextEditingController();
    jurusanC = TextEditingController();
    keteranganC = TextEditingController();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    namaC!.dispose();
    nobpC!.dispose();
    jurusanC!.dispose();
    keteranganC!.dispose();
    // TODO: implement onClose
    super.onClose();
  }
}
