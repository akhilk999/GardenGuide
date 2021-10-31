import 'package:flutter/material.dart';

class Step6 extends StatefulWidget {
  @override
  _Step6State createState() => _Step6State();
}

class _Step6State extends State<Step6> {
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
        heightFactor: 0.5,
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(0,10,0,3),
        child: Text('Step 6: Fill the rest of the remaining space in the pot with the soil, but make sure that there is a least an inch of space remaining after.',
            style: TextStyle(fontSize: 16)),
        ),
        Flexible(
          child: FractionallySizedBox(
            heightFactor: 0.8,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0,10,0,7),
          child: Text('Step 7: Routinely water the plants 1-2 times a week, to make sure that your plants are able to grow.', style: TextStyle(fontSize: 18)),
        ),
        Flexible(
          child: FractionallySizedBox(
            heightFactor: 0.1,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(22.0,0,0,0),
          child: Text('The number of times you water will depend on the temperature of the location you are in.',
              style: TextStyle(fontSize: 12)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(22.0,0,0,0),
            child: Text('After 6-8 weeks, your tomatoes should be fully grown!', style: TextStyle(fontSize: 12)),
          ),
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.2,
            ),
          ),
          Image.asset('NEED IMAGE', scale: 1.4),
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.1,
            ),
          ),
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.3,
            ),
          ),
          Image.asset('NEED IMAGE', scale: 3),
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.1,
            ),
          ),
          ],
        ),
      ),
    );
  }
}
