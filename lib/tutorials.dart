import 'package:flutter/material.dart';
import 'package:gardenguide/Starting a Garden/step1.dart';
import 'package:gardenguide/PlantingTomatoes/step1.dart';
import 'package:gardenguide/Starting a Garden/recs.dart';

class Tutorial extends StatefulWidget {
  @override
  _TutorialState createState() => _TutorialState();
}


class _TutorialState extends State<Tutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[200],
        ),
        title: Text(
            "Tutorials",
            style: TextStyle(fontSize: 20,color: Colors.grey[200],)),
        backgroundColor: Colors.green[600],
      ),
      body: Center(
        child: Column(
          children:[
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(settings: RouteSettings(name: "/Step1"),builder: (context) => Step1()));
              },
              child: Text('Starting a Garden',
                 style: TextStyle(fontWeight: FontWeight.bold,)
              )),
            Image.asset('images/starting.jpg', scale: 1.6),
            TextButton(
                style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(settings: RouteSettings(name: "/Step1Tomato"),builder: (context) => Step1Tomato()));
                },
                child: Text('Planting Tomatoes',
                    style: TextStyle(fontWeight: FontWeight.bold,)
                )),
            Image.asset('images/tomato3.jpg', scale: 1.6),
          ],
        ),
      ),
    );
  }
}

