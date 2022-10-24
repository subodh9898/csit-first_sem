import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Image(
          image: AssetImage("images/comingsoon.jpg"),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
