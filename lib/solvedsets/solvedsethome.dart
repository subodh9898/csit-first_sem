import 'package:csit1stsem/books/pdfviewscreen.dart';
import 'package:csit1stsem/books/bookdownload.dart';
import 'package:csit1stsem/solvedsets/solvedquestion.dart';
import 'package:csit1stsem/solvedsets/solvedsetinfo.dart';

import 'package:flutter/material.dart';

import 'dart:ui';

class SolvedSetHome extends StatefulWidget {
  final int num;

  const SolvedSetHome({Key key, this.num}) : super(key: key);

  @override
  _SolvedSetHomeState createState() => _SolvedSetHomeState();
}

class _SolvedSetHomeState extends State<SolvedSetHome> {
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
                                              datas:
                                                  solvedquestion[widget.num])));
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
        title: Text("Solution Sets"),
      ),
      body: ListView.builder(
        itemCount: solvedsetinfo[widget.num].length,
        itemBuilder: (context, index) => _bookitems(
          solvedsetinfo[widget.num][index]['tag'],
          solvedsetinfo[widget.num][index]['title'],
          solvedsetinfo[widget.num][index]['page'],
          solvedsetinfo[widget.num][index]['size'],
          solvedsetinfo[widget.num][index]['pdflink'],
          solvedsetinfo[widget.num][index]['image'],
        ),
        // children: [
        //   _bookitems(
        //       "hjdjjjjhdj",
        //       " C Programming SolvedSetHome",
        //       "40",
        //       "2.4",
        //       "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf"),
        //   _bookitems(
        //       "hjdjjnjjhdj",
        //       "Digital Logic SolvedSetHome",
        //       "40",
        //       "2.4",
        //       " https://firebasestorage.googleapis.com/v0/b/storage-3cff8.appspot.com/o/2020-05-29%2007-18-34.mp4?alt=media&token=841fffde-2b83-430c-87c3-2d2fd658fd41"),
        //   _bookitems("hjd12jhdj", " IIT SolvedSetHome", "40", "2.4",
        //       "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf"),
        //   _bookitems("hjdjdkjdkjjhdj", "Maths SolvedSetHome", "40", "2.4",
        //       "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf"),
        //   _bookitems("hjdfifkjhdj", " Physics SolvedSetHome", "40", "2.4",
        //       "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf"),
        //   _bookitems(
        //       "hjiuriirikdjhdj",
        //       " C programming fundame \n Prithivi raj paneru",
        //       "40",
        //       "2.4",
        //       "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf"),
        //   _bookitems(
        //       "hjdufufuufjhdj",
        //       " C programming fundame \n Prithivi raj paneru",
        //       "40",
        //       "2.4",
        //       "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf"),
        // ],
      ),
    );
  }
}
