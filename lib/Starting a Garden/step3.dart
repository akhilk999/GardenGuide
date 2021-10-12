import 'package:flutter/material.dart';
import 'package:gardening_app/Starting a Garden/recs.dart';
import 'package:gardening_app/Starting a Garden/step5.dart';

class Step3 extends StatefulWidget {
  @override
  _Step3State createState() => _Step3State();
}

class _Step3State extends State<Step3> {
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
              child: Text('Step 3: Determine which plants you want to garden.', style: TextStyle(fontSize: 16)),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,0,0,10),
              child: Text('For help on deciding, go to our recommendations page:', style: TextStyle(fontSize: 15)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.5,
              ),
            ),
            ElevatedButton(onPressed:() {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Recs()));
            }, child: Text('Recommendations')),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.8,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,10,0,7),
              child: Text('Step 4: Find an area to begin your garden.', style: TextStyle(fontSize: 18)),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15,0,0,15),
              child: Text('Try to pick a flat area with lots of sun & protection from the wind.', style: TextStyle(fontSize: 14)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22.0,0,0,0),
              child: Text('Placing plants near fences are common because it blocks the plants from the wind while still providing sunlight.', style: TextStyle(fontSize: 12)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.2,
              ),
            ),
            Image.asset('images/example1.jpg', scale: 1.4),
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
            Image.asset('images/example2.jpg', scale: 3),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            ElevatedButton(onPressed:() {
              Navigator.push(
                  context,
                  MaterialPageRoute(settings: RouteSettings(name: "/Step5"),builder: (context) => Step5()));
            }, child: Text('Next')),
          ],
        ),
      ),
    );
  }
}
