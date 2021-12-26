import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_api/app/controllers/addCandidateController.dart';

class AddCandidatePage extends StatelessWidget {
  const AddCandidatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final addC = Get.find<AddCandidateController>();
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Candidate"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "Candidate Data",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: addC.namaC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Nama",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: addC.nobpC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "No Bp",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: addC.jurusanC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Jurusan",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: addC.keteranganC,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: "Keterangan",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  addC.addCandidate(
                    addC.namaC!.text,
                    addC.nobpC!.text,
                    addC.jurusanC!.text,
                    addC.keteranganC!.text,
                  );
                },
                child: Text("Add Candidate"),
              )
            ],
          ),
        ));
  }
}
