import 'package:flutter/material.dart';

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
            Text('Step 1: Figure out what type of ', style: TextStyle(fontSize: 23)),
            Text('garden you would like to have', style: TextStyle(fontSize: 23)),
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
            Text('Used to grow flowers, tulips, and other angiosperms', style: TextStyle(fontSize: 14)),
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
            Text('Used to grow legumes, vegetables, and fruit-bearing plants', style: TextStyle(fontSize: 13)),
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
            Text('Used to grow basil, mint, coriander, and other herbs', style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}