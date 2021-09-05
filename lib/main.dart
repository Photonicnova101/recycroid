import 'package:flutter/material.dart';
import 'package:recycroid/Automobile.dart';
import 'package:recycroid/Battery.dart';
import 'package:recycroid/Electronics.dart';
import 'package:recycroid/Glass.dart';
import 'package:recycroid/Hazardous.dart';
import 'package:recycroid/Metal.dart';
import 'package:recycroid/Paint.dart';
import 'package:recycroid/Paper.dart';
import 'package:recycroid/Plastic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recycroid',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
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
                builder: (context) => Hearth(),
              ),
            );
          },
        )),
      ],
    );
  }
}

class Hearth extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
          title: Text("Recycroid"),
        ),
        body: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(15),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 3,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
      child: SizedBox.expand(
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => BatteryLocations(),
                  ),
                );
        },
        child: Text("Battery")
        ) 
      
      ),
      color: Colors.teal[100],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: SizedBox.expand( //brush your teeth button
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => PaperLocations(),
                  ),
                );
        },
        child: Text("Paper"),
        ) 
      
      ),
      color: Colors.teal[200],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: SizedBox.expand( //make your bed
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => GlassLocations(),
                  ),
                );
        },
        child: Text("Glass"),
        ) 
      
      ),
      color: Colors.teal[300],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: SizedBox.expand( //getting dressed 
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => MetalLocations(),
                  ),
                );
        },
        child: Text("Metal"),
        ) 
      
      ),
      color: Colors.teal[400],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: SizedBox.expand( //come your hair
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => AutomobileLocations(),
                  ),
                );
        },
        child: Text("Automobiles")
        ) 
      
      ),
      color: Colors.teal[500],
    ),
    Container(
      padding: const EdgeInsets.all(6),
      child: SizedBox.expand( //do your homework
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => PlasticLocations(),
                  ),
                );
        },
        child: Text("Plastic")
        ) 
      
      ),
      color: Colors.teal[600],
    ),
    Container(
      padding: const EdgeInsets.all(6),
      child: SizedBox.expand( //do your homework
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => PaintLocations(),
                  ),
                );
        },
        child: Text("Paint"),
        ) 
      
      ),
      color: Colors.teal[600],
    ),
    Container(
      padding: const EdgeInsets.all(6),
      child: SizedBox.expand( //do your homework
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => HazardousLocations(),
                  ),
                );
        },
        child: Text("Hazardous"),
        ) 
      
      ),
      color: Colors.teal[600],
    ),
    Container(
      padding: const EdgeInsets.all(6),
      child: SizedBox.expand( //do your homework
        child: TextButton(
          style:TextButton.styleFrom(
          padding: const EdgeInsets.all(2),
          primary:null,
          textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => ElectronicsLocations(),
                  ),
                );
        },
        child: Text("Electronics"),
        ) 
      
      ),
      color: Colors.teal[600],
    ),
  ],
),
);


    }
}