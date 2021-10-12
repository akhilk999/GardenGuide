import 'package:flutter/material.dart';

class Recs extends StatefulWidget {
  @override
  _RecsState createState() => _RecsState();
}

class _RecsState extends State<Recs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[200],
        ),
        title: Text(
            "Starting a Garden",
            style: TextStyle(fontSize: 20,color: Colors.grey[200],)),
        backgroundColor: Colors.green[600],
      ),
      body: Center(),
    );
  }
}