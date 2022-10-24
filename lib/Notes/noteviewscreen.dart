import 'package:csit1stsem/books/pdfviewscreen.dart';
import 'package:csit1stsem/books/bookdownload.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

class NoteViewPage extends StatefulWidget {
  @override
  _NoteViewPageState createState() => _NoteViewPageState();
}

class _NoteViewPageState extends State<NoteViewPage> {
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
                                                        'C Programming Notes',
                                                    'link':
                                                        'https://thetestsite736257640.files.wordpress.com/2020/10/c-programming-note.pdf'
                                                  },
                                                  {
                                                    'name': 'IIT Notes ',
                                                    'link':
                                                        'https://thetestsite736257640.files.wordpress.com/2020/10/introduction-to-information-technology-note.pdf'
                                                  },
                                                  {
                                                    'name':
                                                        'Digital Logic Notes',
                                                    'link':
                                                        'https://thetestsite736257640.files.wordpress.com/2020/10/digital-logic-notes.pdf'
                                                  },
                                                  {
                                                    'name':
                                                        'Physics Notes Handwritten',
                                                    'link':
                                                        'https://thetestsite736257640.files.wordpress.com/2020/10/physics-hand-written-note-rc-sir.pdf'
                                                  },
                                                  {
                                                    'name':
                                                        'Maths Notes Handwritten',
                                                    'link':
                                                        'https://thetestsite736257640.files.wordpress.com/2020/10/mathmatics-i-hand-written-note.pdf'
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
        title: Text("Notes"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _bookitems(
              "hjdjjjjhdj",
              "C Programming Notes",
              "40",
              "2.4",
              "https://thetestsite736257640.files.wordpress.com/2020/10/c-programming-note.pdf",
              "images/cprogramming.jpg"),
          _bookitems(
              "hjdjjnjjhdj",
              " Digital logic Notes",
              "40",
              "2.4",
              "https://thetestsite736257640.files.wordpress.com/2020/10/digital-logic-notes.pdf",
              "images/digitallogic.jpeg"),
          _bookitems(
              "hjd12jhdj",
              "Introduction to Informati-\non and Technology Notes",
              "40",
              "2.4",
              "https://thetestsite736257640.files.wordpress.com/2020/10/introduction-to-information-technology-note.pdf",
              "images/iit.jpg"),
          _bookitems(
              "hjdjdkjdkjjhdj",
              "Mathematics Notes",
              "40",
              "2.4",
              "https://thetestsite736257640.files.wordpress.com/2020/10/mathmatics-i-hand-written-note.pdf",
              "images/maths.jpg"),
          _bookitems(
              "hjdfifkjhdj",
              "physics Notes",
              "40",
              "2.4",
              "https://thetestsite736257640.files.wordpress.com/2020/10/physics-hand-written-note-rc-sir.pdf",
              "images/physics.jpg"),
        ],
      ),
    );
  }
}
