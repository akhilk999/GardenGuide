import 'package:flutter/material.dart';
import 'package:gardening_app/Starting a Garden/step2.dart';

class DontKnow extends StatefulWidget {
  @override
  _DontKnowState createState() => _DontKnowState();
}

class _DontKnowState extends State<DontKnow> {
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