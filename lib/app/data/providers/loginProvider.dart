import 'dart:convert';

import 'package:get/get.dart';
import 'package:project_api/app/data/models/Candidate.dart';

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

  Future<Candidate?> getAllCandidate() async {
    final response = await get(url + "getAllCandidate.php");
    if ((response.body["data"] as List).length == 0) {
      return null;
    }

    Candidate candidate;
    candidate = Candidate.fromJson(response.body);

    return candidate;
  }

  Future<Response> addCandidate(
      String nama, String nobp, String jurusan, String keterangan) {
    final form = FormData({
      'nobp_candidate': nobp,
      'nama': nama,
      'jurusan': jurusan,
      'keterangan': keterangan
    });

    return post(url + "addCandidate.php", form);
  }
}
