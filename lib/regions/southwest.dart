import 'package:flutter/material.dart';
import 'package:gardenguide/Starting a Garden/step2.dart';
import 'package:gardenguide/search.dart';

class southwestRegion extends StatefulWidget {
  @override
  _southwestRegionState createState() => _southwestRegionState();
}

class _southwestRegionState extends State<southwestRegion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[200],
        ),
        title: Text(
            region,
            style: TextStyle(fontSize: 20,color: Colors.grey[200],)),
        backgroundColor: Colors.green[600],
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,10,0,8),
              child: Text('South-West Region', style: TextStyle(fontSize: 20)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.3,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,10,0,8),
              child: Text('Common Plants/Best Plants to Grow: ', style: TextStyle(fontSize: 20)),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,10,10,0),
                  child: Text("- Parry's Penstemon", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,5,10,0),
                  child: Text("- Blackfoot Daisy", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,5,10,0),
                  child: Text("- Desert Spoon", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,5,10,0),
                  child: Text("- Black Dalea", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.3,
              ),
            ),
            Image.asset('images/southwest.jpg', scale: 1.7),
          ],
        ),
      ),
    );
  }
}