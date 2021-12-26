import 'package:flutter/material.dart';

class AddCandidatePage extends StatelessWidget {
  const AddCandidatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                onPressed: () {},
                child: Text("Add Candidate"),
              )
            ],
          ),
        ));
  }
}
