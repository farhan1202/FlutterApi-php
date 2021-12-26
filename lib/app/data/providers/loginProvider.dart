import 'dart:convert';

import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  final url = "http://192.168.100.134/pemilu/api/";

  Future<Response> login(String nobp, String password) {
    // final body = jsonEncode();
    final form = FormData({
      'nobp': nobp,
      'password': password,
    });

    return post(url + "login.php", form);
  }

  Future<Response> registerUser(String nobp, String name, String password) {
    final form = FormData({
      'nobp': nobp,
      'nama': name,
      'password': password,
    });
    return post(url + "regUser.php", form);
  }
}
