import 'package:flutter/material.dart';
import 'package:gardening_app/Starting a Garden/step2.dart';

class Step1 extends StatefulWidget {
  @override
  _Step1State createState() => _Step1State();
}

class _Step1State extends State<Step1> {
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
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.3,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,10,0,8),
              child: Text('Step 1: Figure out what type of ', style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,0,0,8),
              child: Text('garden you would like to have.', style: TextStyle(fontSize: 20)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.5,
              ),
            ),
            Image.asset('images/flower-garden.jpg', scale: 13),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22.0,0,0,0),
              child: Text('Flower gardens are used to grow flowers, tulips, and other angiosperms.', style: TextStyle(fontSize: 13)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.2,
              ),
            ),
            Image.asset('images/vegetable-garden.jpg', scale: 10),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22,0,15,0),
              child: Text('Vegetable gardens are used to grow legumes, vegetables, and fruit-bearing plants.', style: TextStyle(fontSize: 13)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.3,
              ),
            ),
            Image.asset('images/herb-garden.jpg', scale: 14),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22,0,15,0),
              child: Text('Herb gardens are used to grow basil, mint, coriander, and other herbs.', style: TextStyle(fontSize: 13)),
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