import 'package:get/get.dart';
import 'package:project_api/app/data/models/Candidate.dart';
import 'package:project_api/app/data/providers/loginProvider.dart';

class HomeController extends GetxController {
  RxList<Datum> candidate = List<Datum>.empty().obs;

  LoginProvider loginProvider = LoginProvider();

  Future<void> getAllCandidate() async {
    var data = await loginProvider.getAllCandidate();

    if (data!.data != null) {
      data.data!.forEach((element) {
        candidate.add(element);
      });
      candidate.refresh();
    }
  }
}
