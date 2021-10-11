import 'package:flutter/material.dart';
import 'package:gardening_app/Starting a Garden/recs.dart';

class Step4 extends StatefulWidget {
  @override
  _Step4State createState() => _Step4State();
}

class _Step4State extends State<Step4> {
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
              padding: EdgeInsets.fromLTRB(0,10,0,3),
              child: Text('Step 3: Determine which plants you want to garden.', style: TextStyle(fontSize: 17)),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,0,0,10),
              child: Text('For help on deciding, go to our recommendations page:', style: TextStyle(fontSize: 16)),
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
            }, child: Text('Next')),
            Image.asset('images/container-garden.jpeg', scale: 5),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22.0,0,0,0),
              child: Text('Container gardens grow plants in containers and pots.                   - good for urban areas', style: TextStyle(fontSize: 13)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.2,
              ),
            ),
            Image.asset('images/ground-garden.jpg', scale: 2.65),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22.0,0,0,0),
              child: Text('Ground gardens grow large plants in the ground.                            - good for backyards', style: TextStyle(fontSize: 13)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.3,
              ),
            ),
            Image.asset('images/combination.jpg', scale: 7.5),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22,0,15,10),
              child: Text('Both container and ground gardens can be combined as well.', style: TextStyle(fontSize: 13)),
            ),
            ElevatedButton(onPressed:() {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step4()));
            }, child: Text('Next')),
          ],
        ),
      ),
    );
  }
}
