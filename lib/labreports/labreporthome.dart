import 'package:csit1stsem/books/pdfviewscreen.dart';
import 'package:csit1stsem/books/bookdownload.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

class LapReportViewPage extends StatefulWidget {
  @override
  _LapReportViewPageState createState() => _LapReportViewPageState();
}

class _LapReportViewPageState extends State<LapReportViewPage> {
  @override
  Widget build(BuildContext context) {
    Widget _bookitems(String tag, String title, String page, String size,
        String url, String image) {
      return Padding(
        padding: const EdgeInsets.all(1.0),
        child: Card(
          elevation: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(13)),
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              child: Row(
                //this row for dividing the container in two scetion ie image and info
                children: [
                  Hero(
                    tag: tag,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(5),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              image,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.63,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.book,
                              size: 30,
                            ),
                            Text(" Pages: $page"),
                            Icon(
                              Icons.text_fields,
                              size: 30,
                            ),
                            Text(" Size: $size MB"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RaisedButton(
                              color: Colors.green,
                              child: Text("Open"),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PdfView(
                                              url: url,
                                            )));
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.share),
                              onPressed: () {},
                            ),
                            IconButton(
                                icon: Icon(Icons.file_download),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DownloadPage(
                                                datas: [
                                                  {
                                                    'name':
                                                        'C Programming Lab Report',
                                                    'link':
                                                        'https://thetestsite736257640.files.wordpress.com/2020/10/cprogramming.pdf'
                                                  },
                                                  {
                                                    'name':
                                                        '(Coming Soon)DL lab report',
                                                    'link':
                                                        'http://enos.itcollege.ee/~jpoial/allalaadimised/reading/Android-Programming-Cookbook.pdf'
                                                  },
                                                  {
                                                    'name':
                                                        '(Coming Soon)IIT lab report',
                                                    'link':
                                                        'http://darwinlogic.com/uploads/education/iOS_Programming_Guide.pdf'
                                                  },
                                                  {
                                                    'name':
                                                        '(Coming Soon) physics lab report',
                                                    'link':
                                                        'https://www.bignerdranch.com/documents/objective-c-prereading-assignment.pdf'
                                                  },
                                                ],
                                              )));
                                })
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // color: Colors.red,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Lab reports"),
      ),
      body: ListView(
        children: [
          _bookitems(
              "45",
              "C prog. Lab Report",
              "40",
              "2.4",
              "https://thetestsite736257640.files.wordpress.com/2020/10/cprogramming.pdf",
              "images/cprogramming.jpg"),
          _bookitems(
              "46",
              " Digital logic Lab Report",
              "40",
              "2.4",
              " https://firebasestorage.googleapis.com/v0/b/storage-3cff8.appspot.com/o/2020-05-29%2007-18-34.mp4?alt=media&token=841fffde-2b83-430c-87c3-2d2fd658fd41",
              "images/digitallogic.jpeg"),
          _bookitems(
              "h47j",
              "IIT Lab Report",
              "40",
              "2.4",
              "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf",
              "images/iit.jpg"),
          _bookitems(
              "hjjh48",
              "Physics Lab Report",
              "40",
              "2.4",
              "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf",
              "images/physics.jpg"),
        ],
      ),
    );
  }
}
