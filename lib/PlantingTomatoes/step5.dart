import 'package:flutter/material.dart';
import 'package:gardening_app/PlantingTomatoes/step6.dart';

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
            "Planting Tomatoes",
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
              padding: EdgeInsets.fromLTRB(10,10,10,8),
              child: Text('Step 5: Water the seeds with the spray bottle, but make sure not to give the seeds too much water. Too much water can kill the tomatoes.', style: TextStyle(fontSize: 17)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.3,
              ),
            ),
            Image.asset('images/water.webp', scale: 2.2),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22.0,0,0,0),
              child: Text('Try to do 2-3 sprays, depending on how many seeds you planted.', style: TextStyle(fontSize: 15)),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.2,
              ),
            ),
            ElevatedButton(onPressed:() {
              Navigator.push(
                  context,
                  MaterialPageRoute(settings: RouteSettings(name: "/Step6"),builder: (context) => Step6()));
            }, child: Text('Next')),
          ],
        ),
      ),
    );
  }
}
