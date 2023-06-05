import 'package:flutter/material.dart';
import 'package:gardenguide/Starting a Garden/step3.dart';

class Step2 extends StatefulWidget {
  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
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
              child: Text('Step 2: Figure out what your garden will look like.', style: TextStyle(fontSize: 17)),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,0,0,10),
              child: Text('Would it grow in the ground, in containers, or both?', style: TextStyle(fontSize: 16)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.5,
              ),
            ),
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
                  MaterialPageRoute(settings: RouteSettings(name: "/Step3"),builder: (context) => Step3()));
            }, child: Text('Next')),
          ],
        ),
      ),
    );
  }
}
