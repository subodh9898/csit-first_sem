import 'package:csit1stsem/Videos/videodata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class VideoScreen extends StatelessWidget {
  final int num;

  const VideoScreen({Key key, this.num}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Videos"),
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) => Card(
                  child: Container(
                    height: 0,
                    color: Colors.brown,
                  ),
                ),
            itemCount: youtubedata[num].length,
            itemBuilder: (context, index) => Column(
                  children: [
                    Card(
                      elevation: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebViewScreen(
                                          fileurl: youtubedata[num][index]
                                              ['videourl'],
                                        )));
                          },
                          child: Container(
                            child: Center(
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.red,
                                size: 90,
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(youtubedata[num][index]
                                        ['thumbnailurl']))),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            youtubedata[num][index]['thumbnailurl']),
                      ),
                      title: Text(youtubedata[num][index]['title']),
                      subtitle: Text(youtubedata[num][index]['channelname']),
                    )
                  ],
                )),
      ),
    );
  }
}

class WebViewScreen extends StatelessWidget {
  final String fileurl;

  const WebViewScreen({Key key, this.fileurl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebviewScaffold(
        withZoom: true,
        url: fileurl,
      ),
    );
  }
}
