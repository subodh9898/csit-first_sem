import 'package:csit1stsem/books/pdfviewscreen.dart';
import 'package:csit1stsem/books/bookdownload.dart';
import 'package:csit1stsem/oldquestions/oldquestioninfodata.dart';
import 'package:csit1stsem/oldquestions/olquestionlistdata.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

class OldQuestionHome extends StatefulWidget {
  final int num;

  const OldQuestionHome({Key key, this.num}) : super(key: key);

  @override
  _OldQuestionHomeState createState() => _OldQuestionHomeState();
}

class _OldQuestionHomeState extends State<OldQuestionHome> {
  @override
  Widget build(BuildContext context) {
    print(oldquestionsinfo[widget.num][0]['pdflink']);
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
                                              datas: oldquestion[widget.num])));
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
        title: Text("Old Questions"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: oldquestionsinfo[widget.num].length,
        itemBuilder: (context, index) => _bookitems(
          oldquestionsinfo[widget.num][index]['tag'],
          oldquestionsinfo[widget.num][index]['title'],
          oldquestionsinfo[widget.num][index]['page'],
          oldquestionsinfo[widget.num][index]['size'],
          oldquestionsinfo[widget.num][index]['pdflink'],
          oldquestionsinfo[widget.num][index]['image'],
        ),
        // children: [
        //   _bookitems(
        //       "hjdjjjjhdj",
        //       " C Programming OldQuestionHome",
        //       "40",
        //       "2.4",
        //       "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf"),
        //   _bookitems(
        //       "hjdjjnjjhdj",
        //       "Digital Logic OldQuestionHome",
        //       "40",
        //       "2.4",
        //       " https://firebasestorage.googleapis.com/v0/b/storage-3cff8.appspot.com/o/2020-05-29%2007-18-34.mp4?alt=media&token=841fffde-2b83-430c-87c3-2d2fd658fd41"),
        //   _bookitems("hjd12jhdj", " IIT OldQuestionHome", "40", "2.4",
        //       "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf"),
        //   _bookitems("hjdjdkjdkjjhdj", "Maths OldQuestionHome", "40", "2.4",
        //       "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf"),
        //   _bookitems("hjdfifkjhdj", " Physics OldQuestionHome", "40", "2.4",
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
