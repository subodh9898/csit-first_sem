import 'package:flutter/material.dart';

class ContainerBox extends StatelessWidget {
  final int num;
  final String imageurl;
  final Color colorofcontainer;
  final String maintext;
  final Function onpressed;

  ContainerBox(
      {Key key,
      this.num,
      this.colorofcontainer,
      this.imageurl,
      this.maintext,
      this.onpressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onpressed,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.20,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
              color: colorofcontainer, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 1),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: colorofcontainer,
                  backgroundImage: AssetImage(imageurl
                      // 'https://neconnected.co.uk/wp-content/uploads/2020/01/youtube-1248x640.jpg'
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 8.0),
                child: Text(
                  maintext,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
