import 'package:flutter/material.dart';
import 'package:gardening_app/Starting a Garden/step6.dart';

class Step5 extends StatefulWidget {
  @override
  _Step5State createState() => _Step5State();
}

class _Step5State extends State<Step5> {
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
      body: Column(
          children: [
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.3,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,10,0,10),
              child: Text('Step 5: Figure out what materials you have.', style: TextStyle(fontSize: 17)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.5,
              ),
            ),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(22,0,0,0),
                  child: Text('- Potting Soil Scoop', style: TextStyle(fontSize: 15)),
                ))),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(50,0,0,0),
                  child: Text('- easily fills pots and planters', style: TextStyle(fontSize: 13)),
                ))),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.4,
              ),
            ),
            //Image.asset('images/ground-garden.jpg', scale: 2.65),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(22,0,0,0),
                  child: Text('- Standard Kitchen Knife', style: TextStyle(fontSize: 15)),
                ))),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(50,0,0,0),
                  child: Text('- makes precise cuts when harvesting vegetables', style: TextStyle(fontSize: 13)),
                ))),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.4,
              ),
            ),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(22,0,0,0),
                  child: Text('- Cordless Drill', style: TextStyle(fontSize: 15)),
                ))),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(50,0,0,0),
                  child: Text('- helps make drainage holes when converting found objects to planters', style: TextStyle(fontSize: 13)),
                ))),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.4,
              ),
            ),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(22,0,0,0),
                  child: Text('- Hori Hori Knife', style: TextStyle(fontSize: 15)),
                ))),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(50,0,0,0),
                  child: Text('- divides clumps of roots and other coarse garden tasks', style: TextStyle(fontSize: 13)),
                ))),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.4,
              ),
            ),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(22,0,0,0),
                  child: Text('- Hand Pruners', style: TextStyle(fontSize: 15)),
                ))),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(50,0,0,0),
                  child: Text('- cuts stems and branches up to a half-inch in diameter', style: TextStyle(fontSize: 13)),
                ))),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.4,
              ),
            ),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(22,0,0,0),
                  child: Text('- Pruning Saw', style: TextStyle(fontSize: 15)),
                ))),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(50,0,0,0),
                  child: Text('- easily accesses tight spaces when pruning trees and shrubs', style: TextStyle(fontSize: 13)),
                ))),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.4,
              ),
            ),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(22,0,0,0),
                  child: Text('- Watering Can', style: TextStyle(fontSize: 15)),
                ))),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(50,0,0,0),
                  child: Text('- used to water the garden', style: TextStyle(fontSize: 13)),
                ))),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.4,
              ),
            ),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(22,0,0,0),
                  child: Text('- Plants/Seeds you want to plant', style: TextStyle(fontSize: 15)),
                ))),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.4,
              ),
            ),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(22,0,0,0),
                  child: Text('- Shovel', style: TextStyle(fontSize: 15)),
                ))),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(50,0,0,0),
                  child: Text('- can be used to work with soil and dirt', style: TextStyle(fontSize: 13)),
                ))),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.4,
              ),
            ),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(22,0,0,0),
                  child: Text('- Rake', style: TextStyle(fontSize: 15)),
                ))),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(50,0,0,0),
                  child: Text('- can be used to remove stones, rocks, and clogs from the ground before planting', style: TextStyle(fontSize: 13)),
                ))),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.4,
              ),
            ),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(22,0,0,0),
                  child: Text('- Hoe', style: TextStyle(fontSize: 15)),
                ))),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(50,0,0,0),
                  child: Text('- can be used to cultivate the soil and edge the lawn', style: TextStyle(fontSize: 13)),
                ))),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.4,
              ),
            ),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(22,0,0,0),
                  child: Text('- Gloves', style: TextStyle(fontSize: 15)),
                ))),
            Align(alignment: Alignment.centerLeft,
                child: Container(child: Padding(
                  padding: EdgeInsets.fromLTRB(50,0,0,0),
                  child: Text('- protect the hands from the dirt', style: TextStyle(fontSize: 13)),
                ))),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 1,
              ),
            ),
            ElevatedButton(onPressed:() {
              Navigator.push(
                  context,
                  MaterialPageRoute(settings: RouteSettings(name: "/Step6"),builder: (context) => Step6()));
            }, child: Text('Next')),
          ],
        ),
    );
  }
}
