import 'package:flutter/material.dart';
import 'package:gardening_app/Starting a Garden/step2.dart';
import 'package:gardening_app/search.dart';

class midwestRegion extends StatefulWidget {
  @override
  _midwestRegionState createState() => _midwestRegionState();
}

class _midwestRegionState extends State<midwestRegion> {
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
              child: Text('Midwest Region', style: TextStyle(fontSize: 20)),
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
                  child: Text("- Cardinal Flower", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,5,10,0),
                  child: Text("- Prairie Dropseed", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,5,10,0),
                  child: Text("- Wild Bergamot", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.3,
              ),
            ),
            Image.asset('images/midwest.jpg', scale: 1.5),
          ],
        ),
      ),
    );
  }
}