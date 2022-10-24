import 'package:csit1stsem/qna/qnadata.dart';
import 'package:flutter/material.dart';

class QNAView extends StatelessWidget {
  final int number1;
  final int number2;

  const QNAView({Key key, this.number1, this.number2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Card qnatiles(String title, String des, String number) {
      return Card(
        child: ExpansionTile(
          leading: CircleAvatar(
              backgroundColor: Colors.indigo, child: Text("$number")),
          title: Text(
            "$title",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
          children: <Widget>[
            Divider(
              height: 0,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("$des"),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Answers"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: mydata[number1][number2].length,
        itemBuilder: (context, index) => qnatiles(
            mydata[number1][number2][index]['question'],
            mydata[number1][number2][index]['answer'],
            mydata[number1][number2][index]['number']),
      ),
    );
  }
}
