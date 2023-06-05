import 'package:flutter/material.dart';
import 'package:gardenguide/Starting a Garden/step2.dart';
import 'package:gardenguide/Starting a Garden/recs.dart';
import 'package:gardenguide/search.dart';

class southernRegion extends StatefulWidget {
  @override
  _southernRegionState createState() => _southernRegionState();
}

class _southernRegionState extends State<southernRegion> {
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
              child: Text('Southern Region', style: TextStyle(fontSize: 20)),
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
                  child: Text("- Fiddlewood", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,5,10,0),
                  child: Text("- Ashe Juniper", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,5,10,0),
                  child: Text("- Blue Ridge Goldenrod", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.3,
              ),
            ),
            Image.asset('images/southern.jpg', scale: 1.7),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}