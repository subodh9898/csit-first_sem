import 'package:csit1stsem/cprogramexamples/programdata.dart';
import 'package:csit1stsem/testfile.dart';

import 'package:flutter/material.dart';
import 'package:flutter_clipboard_manager/flutter_clipboard_manager.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CprogramHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Programs "),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                trailing: Icon(
                  FontAwesomeIcons.chevronCircleRight,
                  color: Colors.indigo,
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TestFile(
                              programs: programdata[index]['code'],
                            ))),
                leading: CircleAvatar(
                  child: Text("${index + 1}"),
                ),
                title: Text(programdata[index]['title']),
              ),
          separatorBuilder: (context, index) => Container(
                height: 1,
                color: Colors.blueGrey,
              ),
          itemCount: programdata.length),
    );
  }
}
