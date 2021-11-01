import 'package:flutter/material.dart';
import 'package:gardening_app/Starting a Garden/step2.dart';
import 'package:gardening_app/search.dart';

class midAtlanticRegion extends StatefulWidget {
  @override
  _midAtlanticRegionState createState() => _midAtlanticRegionState();
}

class _midAtlanticRegionState extends State<midAtlanticRegion> {
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
              child: Text('Mid-Atlantic Region', style: TextStyle(fontSize: 20)),
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
                  child: Text("- Lanceleaf coreopsis", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,5,10,0),
                  child: Text("- Coreopsis lanceolata", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,5,10,0),
                  child: Text("- Penstemon digitalis", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,5,10,0),
                  child: Text("- Wild indigo", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,5,10,0),
                  child: Text("- Baptisia tinctoria", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,5,10,0),
                  child: Text("- Butterfly milkweed", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50,5,10,0),
                  child: Text("- Great blue lobelia", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.3,
              ),
            ),
            Image.asset('images/midatlantic.jpg', scale: 1.7),
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