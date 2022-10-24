import 'package:csit1stsem/Notes/noteviewscreen.dart';
import 'package:csit1stsem/Videos/subjectselection.dart';
import 'package:csit1stsem/books/Bookviewscreen.dart';
import 'package:csit1stsem/cprogramexamples/cprogramhome.dart';
import 'package:csit1stsem/labreports/labreporthome.dart';
import 'package:csit1stsem/oldquestions/oldqsnsubselection.dart';
import 'package:csit1stsem/qna/qnahome.dart';
import 'package:csit1stsem/screens/container.dart';
import 'package:csit1stsem/screens/subjectselectionscreen.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:csit1stsem/solvedsets/solvedquestionsubselection.dart';
import 'package:csit1stsem/syllabus/syllabusdata.dart';
import 'package:csit1stsem/testfile.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:launch_review/launch_review.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import 'cominsoonscreen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: Container(
        //   color: Colors.indigo,
        //   height: MediaQuery.of(context).size.height * 0.08,
        // ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                // margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 75.0,
                        height: 75.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('images/books.jpg'))),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 3.0),
                            child: Text(
                              'CSIT First',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Container(
                            child: Text(
                              'SEMESTER',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontFamily: 'Montserrat'),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: Text(" Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                onTap: () {
                  launch(
                      "https://www.neptechpal.com/loksewa-tayari-2021-privacy-policy/");
                },
                leading: Icon(
                  FontAwesomeIcons.paperclip,
                ),
                title: Text("Privacy Policy"),
              ),
              ListTile(
                onTap: () {
                  launch("https://www.tuiost.edu.np/notices");
                },
                leading: Icon(
                  FontAwesomeIcons.bell,
                ),
                title: Text("Notices"),
              ),
              ListTile(
                leading: Icon(
                  Icons.share,
                ),
                title: Text("Share"),
                onTap: () {
                  Share.share(
                      " Hello there you can download our app from this link https://play.google.com/store/apps/details?id=com.neptechpal.loksewatayari");
                },
              ),
              ListTile(
                onTap: () {
                  LaunchReview.launch(
                      androidAppId: "com.neptechpal.csit1stsem");
                },
                leading: Icon(
                  Icons.star_border,
                ),
                title: Text("Rate"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ComingSoon()));
                },
                leading: Icon(
                  Icons.info_outline,
                ),
                title: Text("About Us"),
              ),
              ListTile(
                onTap: () {
                  launch(
                      "https://play.google.com/store/apps/developer?id=Neptechpal+pvt.+Ltd");
                },
                leading: Icon(
                  Icons.add,
                ),
                title: Text(" More Apps "),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("First Semester"),
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
                            colorofcontainer: Color.fromRGBO(255, 122, 109, 1),
                            imageurl: "images/syllabus.jpg",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Syllabus()));
                            },
                            maintext: "Syllabus",
                          ),
                          ContainerBox(
                            colorofcontainer: Color.fromRGBO(239, 189, 106, 1),
                            imageurl: "images/notes.jpg",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NoteViewPage()));
                            },
                            maintext: "Notes",
                          ),
                          ContainerBox(
                            colorofcontainer: Color.fromRGBO(89, 81, 223, 1),
                            imageurl: "images/books.jpg",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookViewPage()));
                            },
                            maintext: "Books",
                          ),
                          ContainerBox(
                            colorofcontainer: Color.fromRGBO(255, 0, 255, 1),
                            imageurl: "images/literature.png",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          OldQuestionSubSelection()));
                            },
                            maintext: "Old Question",
                          ),
                          ContainerBox(
                            colorofcontainer: Color.fromRGBO(249, 188, 151, 1),
                            imageurl: "images/others.jpg",
                            onpressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => TestFile()));
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ComingSoon()));
                            },
                            maintext: "Formulas",
                          ),
                          ContainerBox(
                            colorofcontainer: Color.fromRGBO(71, 94, 109, 10),
                            imageurl: "images/solvedsets.jpg",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SolvedQuestionSubSelection()));
                            },
                            maintext: "Solved Sets",
                          ),
                          ContainerBox(
                            colorofcontainer: Color.fromRGBO(172, 172, 76, 1),
                            imageurl: "images/labreport.jpg",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          LapReportViewPage()));
                            },
                            maintext: "Lab Reports",
                          ),
                          ContainerBox(
                            colorofcontainer: Colors.red,
                            imageurl: "images/politics.jpg",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SelectSubjectVideo()));
                            },
                            maintext: "Videos",
                          ),
                          ContainerBox(
                            colorofcontainer: Color.fromRGBO(51, 215, 160, 1),
                            imageurl: "images/qna.jpg",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QNA()));
                            },
                            maintext: "IMP QNA",
                          ),
                          ContainerBox(
                            colorofcontainer: Color.fromRGBO(0, 206, 209, 1),
                            imageurl: "images/code.png",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CprogramHome()));
                            },
                            maintext: "C Program eg",
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
