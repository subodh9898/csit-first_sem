import 'package:csit1stsem/books/pdfviewscreen.dart';
import 'package:csit1stsem/books/bookdownload.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

class BookViewPage extends StatefulWidget {
  @override
  _BookViewPageState createState() => _BookViewPageState();
}

class _BookViewPageState extends State<BookViewPage> {
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
                                                        'C programming Book ',
                                                    'link':
                                                        'https://thetestsite736257640.files.wordpress.com/2020/10/c-programming-__-the-ultimate-way-to-learn-the-fundamentals-of-the-c-language.-pdfdrive-.pdf'
                                                  },
                                                  {
                                                    'name':
                                                        'Digital Logic Book',
                                                    'link':
                                                        'https://thetestsite736257640.files.wordpress.com/2020/10/m-morris-mano_-charles-r-kime-logic-and-computer-design-fundamentals-2004-prentice-hall-.pdf'
                                                  },
                                                  {
                                                    'name': 'IIT Book',
                                                    'link':
                                                        'https://thetestsite736257640.files.wordpress.com/2020/10/computer-fundamentals-by-anita-goel-full-book.pdf'
                                                  },
                                                  {
                                                    'name': 'Mathematics Book',
                                                    'link':
                                                        'https://thetestsite736257640.files.wordpress.com/2020/10/calculus-early-transcendentals-7th-edition-.pdf'
                                                  },
                                                  {
                                                    'name': 'Physics Book',
                                                    'link':
                                                        'https://thetestsite736257640.files.wordpress.com/2020/10/physics-for-computer-science-students-with-emphasis-on-atomic-and-semiconductor-physics.pdf'
                                                  },
                                                ],
                                              )));
                                }
                                // onPressed: () async {
                                //   final status =
                                //       await Permission.storage.request();

                                //   if (status.isGranted) {
                                //     final externalDir =
                                //         await getExternalStorageDirectory();

                                //     final id = await FlutterDownloader.enqueue(
                                //       url: url,
                                //       savedDir: externalDir.path,
                                //       fileName: title,
                                //       showNotification: true,
                                //       openFileFromNotification: true,
                                //     );
                                //   } else {
                                //     print("Permission deined");
                                //   }
                                // }
                                )
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
        title: Text("BOOKS"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _bookitems(
              "hjdjjjjhdj",
              "Fundamental of Computer\n prograamming",
              "40",
              "2.4",
              "https://thetestsite736257640.files.wordpress.com/2020/10/c-programming-__-the-ultimate-way-to-learn-the-fundamentals-of-the-c-language.-pdfdrive-.pdf",
              "images/cprogramming.jpg"),
          _bookitems(
              "hjdjjnjjhdj",
              " Digital logic Book",
              "40",
              "2.4",
              "https://thetestsite736257640.files.wordpress.com/2020/10/m-morris-mano_-charles-r-kime-logic-and-computer-design-fundamentals-2004-prentice-hall-.pdf",
              "images/digitallogic.jpeg"),
          _bookitems(
              "hjd12jhdj",
              "Introduction to IT Book",
              "40",
              "2.4",
              "https://thetestsite736257640.files.wordpress.com/2020/10/computer-fundamentals-by-anita-goel-full-book.pdf",
              "images/iit.jpg"),
          _bookitems(
              "hjdjdkjdkjjhdj",
              " Mathematics Book ",
              "40",
              "2.4",
              "https://thetestsite736257640.files.wordpress.com/2020/10/calculus-early-transcendentals-7th-edition-.pdf",
              "images/maths.jpg"),
          _bookitems(
              "hjdfifkjhdj",
              " Physics Book for CSIT",
              "40",
              "2.4",
              "https://thetestsite736257640.files.wordpress.com/2020/10/physics-for-computer-science-students-with-emphasis-on-atomic-and-semiconductor-physics.pdf",
              "images/physics.jpg"),
          // _bookitems(
          //     "hjiuriirikdjhdj",
          //     " C programming fundame \n Prithivi raj paneru",
          //     "40",
          //     "2.4",
          //     "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf",
          //     "images/physics.jpg"),
          // _bookitems(
          //     "hjdufufuufjhdj",
          //     " C programming fundame \n Prithivi raj paneru",
          //     "40",
          //     "2.4",
          //     "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf",
          //     "images/physics.jpg"),
        ],
      ),
    );
  }
}
