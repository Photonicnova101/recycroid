import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:recycroid/hearth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Recycroid',
        home: head());
  }
}
class head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Theme.of(context).accentColor,
          child: Text(
            "RECYCROID",
            // style: ,
          ),
        ),
        Container(
          child: Image(
            image: AssetImage("images/recycle.png"),
          ),
        ),
        Container(
          child: Text("RECYCROID AIMS TO HELP USERS RECYCLE"),),
        Container(
            child: TextButton(
          child: Text("Start Recycling", style: TextStyle(fontFamily:'PTSans-Bold.ttf'),),
          onPressed: () {
            Navigator.of(context).push(
              // With MaterialPageRoute, you can pass data between pages,
              // but if you have a more complex app, you will quickly get lost.
              MaterialPageRoute(
                builder: (context) => shaft(),
              ),
            );
          },
        )),
      ],
    );
  }
}
