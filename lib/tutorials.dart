import 'package:flutter/material.dart';
import 'package:gardening_app/Starting a Garden/step1.dart';
import 'package:gardening_app/Starting a Garden/recs.dart';

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
                 // style: TextStyle(color: Colors.black)
              )),
            TextButton(
                style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(settings: RouteSettings(name: "/Recs"),builder: (context) => Recs()));
                },
                child: Text('Recommendations',
                  // style: TextStyle(color: Colors.black)
                )),
          ],
        ),
      ),
    );
  }
}

