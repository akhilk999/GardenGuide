import 'package:flutter/material.dart';
import 'package:gardening_app/Starting a Garden/step2.dart';
import 'package:gardening_app/search.dart';

class rockyMountains extends StatefulWidget {
  @override
  _rockyMountainsState createState() => _rockyMountainsState();
}

class _rockyMountainsState extends State<rockyMountains> {
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
              child: Text('Rocky Mountains', style: TextStyle(fontSize: 20)),
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
            Padding(
              padding: EdgeInsets.fromLTRB(0,10,0,8),
              child: Text('Boulder Raspberry, Rocky Mountain Juniper, Shrubby Cinquefoil', style: TextStyle(fontSize: 15)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.3,
              ),
            ),
            ElevatedButton(onPressed:() {
              Navigator.push(
                  context,
                  MaterialPageRoute(settings: RouteSettings(name: "/Step2"),builder: (context) => Step2()));
            }, child: Text('Next')),
          ],
        ),
      ),
    );
  }
}