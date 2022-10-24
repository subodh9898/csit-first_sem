import 'package:flutter/material.dart';
import 'package:flutter_clipboard_manager/flutter_clipboard_manager.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class TestFile extends StatefulWidget {
  final String programs;

  const TestFile({Key key, this.programs}) : super(key: key);

  @override
  _TestFileState createState() => _TestFileState();
}

class _TestFileState extends State<TestFile> {
  bool result = false;
  @override
  void initState() {
    super.initState();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: InkWell(
        onTap: () {
          FlutterClipboardManager.copyToClipBoard(widget.programs)
              .then((result) {
            final snackBar = SnackBar(
              content: Text('Copied to Clipboard'),
              action: SnackBarAction(
                label: 'Okay',
                onPressed: () {},
              ),
            );
            _scaffoldKey.currentState.showSnackBar(snackBar);
          });
        },
        child: CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 35,
          child: Column(
            children: [
              IconButton(
                  icon: Icon(Icons.content_copy),
                  onPressed: () {
                    FlutterClipboardManager.copyToClipBoard(widget.programs)
                        .then((result) {
                      final snackBar = SnackBar(
                        content: Text('Copied to Clipboard'),
                        action: SnackBarAction(
                          label: 'Okay',
                          onPressed: () {},
                        ),
                      );
                      _scaffoldKey.currentState.showSnackBar(snackBar);
                    });
                  }),
              Text("Copy")
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Programs"),
        actions: [
          IconButton(
              icon: Icon(
                FontAwesomeIcons.googlePlay,
                color: Colors.white,
              ),
              onPressed: () {
                launch(
                    "https://play.google.com/store/apps/details?id=com.kvassyu.coding.c");
              }),
          IconButton(
              icon: Icon(
                FontAwesomeIcons.internetExplorer,
                color: Colors.white,
              ),
              onPressed: () {
                launch("https://www.jdoodle.com/c-online-compiler/");
              })
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Color(0xff2E3152),
        child: ListView(
          children: [
            Text(
              """
              ${widget.programs}
              // Click on Copy button to copy code
              //Click on playstore button to download 
              //compiler on mobile and run this code
              //Click on Internet Explorer button to 
              //Compile code online



              """,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
