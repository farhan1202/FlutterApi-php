import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_api/app/routes/app_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPage.INITIAL,
      getPages: AppPage.pages,
    );
  }
}
