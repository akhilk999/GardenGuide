import 'package:flutter/material.dart';
import 'package:gardening_app/Starting a Garden/step1.dart';

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
        child: TextButton(
            style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Step1()));
            },
            child: Text('Starting a Garden', style: TextStyle(color: Colors.black))),
      ),
    );
  }
}