import 'dart:async';

import 'package:csit1stsem/screens/homescreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return MyHomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.indigo,
                radius: 50.0,
                backgroundImage: AssetImage('images/books.jpg'),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "FIRST SEMESTER",
                style: TextStyle(
                    fontSize: 40.0, color: Colors.white, fontFamily: "Satisfy"),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
