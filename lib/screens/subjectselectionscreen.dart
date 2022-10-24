import 'package:csit1stsem/screens/container.dart';
import 'package:flutter/material.dart';

class SelectSubject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: Container(
        //   color: Colors.indigo,
        //   height: MediaQuery.of(context).size.height * 0.08,
        // ),

        appBar: AppBar(
          title: Title(color: Colors.redAccent, child: Text("Select Subject")),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    color: Colors.green,
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.61,
                  //use this data while using bottom navigation bar of height 0.08 mediaquery
                  //MediaQuery.of(context).size.height * 0.533
                  child: ListView(
                    children: [
                      Wrap(
                        children: [
                          ContainerBox(
                            colorofcontainer: Colors.red,
                            imageurl: "images/computer.jpg",
                            onpressed: null,
                            maintext: "C Programming",
                          ),
                          ContainerBox(
                            colorofcontainer: Colors.red,
                            imageurl: "images/computer.jpg",
                            onpressed: null,
                            maintext: "IIT",
                          ),
                          ContainerBox(
                            colorofcontainer: Colors.red,
                            imageurl: "images/computer.jpg",
                            onpressed: null,
                            maintext: "Digital Logic",
                          ),
                          ContainerBox(
                            colorofcontainer: Colors.red,
                            imageurl: "images/computer.jpg",
                            onpressed: null,
                            maintext: "Maths",
                          ),
                          ContainerBox(
                            colorofcontainer: Colors.red,
                            imageurl: "images/computer.jpg",
                            onpressed: null,
                            maintext: "Physics",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
