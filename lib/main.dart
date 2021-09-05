import 'package:flutter/material.dart';
import 'package:recycroid/hearth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Recycroid', home: head());
  }
}

class head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(child: Text("RECYCROID")),
        Container(
          child: Image(
            image: AssetImage("images/recycle.png"),
          ),
        ),
        Container(child: Text("RECYCROID AIMS TO FUCK USERS")),
        Container(
            child: TextButton(
          child: Text("Start Recycling"),
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

//  Scaffold(
//         appBar:(AppBar(
//           title: Text("Recycroid"),

//         ),
//          body: Image(image:AssetImage("images/recycle.png"),),),
//       ),
//     ),
