import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_api/app/controllers/homeController.dart';
import 'package:project_api/app/routes/app_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeC = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME Page"),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.addCandidate);
            },
            icon: Icon(Icons.add),
          )
        ],
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: homeC.getAllCandidate(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(child: Text("Loading.."));
          if (homeC.candidate.length == 0)
            return Center(child: Text("Tidak Ada Data.."));

          return ListView.builder(
            itemCount: homeC.candidate.length,
            itemBuilder: (context, i) => Padding(
              padding: EdgeInsets.all(10),
              child: Card(
                elevation: 4,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.pink,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("No Bp : ${homeC.candidate[i].nobpCandidate}"),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Nama : ${homeC.candidate[i].nama}"),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Jurusan : ${homeC.candidate[i].jurusan}"),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
