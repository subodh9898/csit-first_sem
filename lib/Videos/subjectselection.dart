import 'package:carousel_pro/carousel_pro.dart';
import 'package:csit1stsem/Videos/videoplayscreen.dart';
import 'package:csit1stsem/screens/container.dart';
import 'package:flutter/material.dart';

class SelectSubjectVideo extends StatelessWidget {
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
              ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 4, 8, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: Container(
                      color: Colors.red,
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: Carousel(
                        boxFit: BoxFit.cover,
                        autoplay: true,
                        autoplayDuration: Duration(seconds: 5),
                        animationCurve: Curves.fastOutSlowIn,
                        animationDuration: Duration(milliseconds: 1000),
                        dotSize: 5.0,
                        dotColor: Colors.green,
                        dotIncreasedColor: Color(0xFFFF335C),
                        dotBgColor: Colors.transparent,
                        dotPosition: DotPosition.bottomCenter,
                        dotVerticalPadding: 1.0,
                        showIndicator: true,
                        indicatorBgPadding: 7.0,
                        images: [
                          NetworkImage(
                              "https://blog.hubspot.com/hs-fs/hubfs/2-min.png?width=598&name=2-min.png"),
                          NetworkImage(
                              "https://blog.hubspot.com/hs-fs/hubfs/1-min.png?width=598&name=1-min.png"),
                          NetworkImage(
                              "https://blog.hubspot.com/hs-fs/hubfs/3-min.png?width=598&name=3-min.png"),
                          NetworkImage(
                              "https://blog.hubspot.com/hs-fs/hubfs/4-min.png?width=598&name=4-min.png"),
                          NetworkImage(
                              "https://blog.hubspot.com/hs-fs/hubfs/10-min.png?width=598&name=10-min.png"),
                          NetworkImage(
                              "https://blog.hubspot.com/hs-fs/hubfs/8-min.png?width=598&name=8-min.png"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.63,
                  //use this data while using bottom navigation bar of height 0.08 mediaquery
                  //MediaQuery.of(context).size.height * 0.533
                  child: ListView(
                    children: [
                      Wrap(
                        children: [
                          ContainerBox(
                            num: 0,
                            colorofcontainer: Color.fromRGBO(71, 94, 109, 10),
                            imageurl: "images/iit.jpg",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VideoScreen(
                                            num: 0,
                                          )));
                            },
                            maintext: "IIT",
                          ),
                          ContainerBox(
                            num: 1,
                            colorofcontainer: Color.fromRGBO(172, 172, 76, 1),
                            imageurl: "images/cprogramming.jpg",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VideoScreen(
                                            num: 1,
                                          )));
                            },
                            maintext: "C Programming",
                          ),
                          ContainerBox(
                            num: 2,
                            colorofcontainer: Color.fromRGBO(239, 189, 106, 1),
                            imageurl: "images/digitallogic.jpeg",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VideoScreen(
                                            num: 2,
                                          )));
                            },
                            maintext: "Digital Logic",
                          ),
                          ContainerBox(
                            num: 3,
                            colorofcontainer: Color.fromRGBO(255, 0, 255, 1),
                            imageurl: "images/maths.jpg",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VideoScreen(
                                            num: 3,
                                          )));
                            },
                            maintext: "Maths",
                          ),
                          ContainerBox(
                            num: 4,
                            colorofcontainer: Color.fromRGBO(249, 188, 151, 1),
                            imageurl: "images/physics.jpg",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VideoScreen(
                                            num: 4,
                                          )));
                            },
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
