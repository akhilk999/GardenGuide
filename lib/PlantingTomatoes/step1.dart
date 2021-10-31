import 'package:flutter/material.dart';
import 'package:gardening_app/PlantingTomatoes/step2.dart';

class Step1Tomato extends StatefulWidget {
  @override
  _Step1TomatoState createState() => _Step1TomatoState();
}

class _Step1TomatoState extends State<Step1Tomato> {
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
        padding: EdgeInsets.fromLTRB(0,10,0,8),
        child: Text('Step 1: Gather All the materials you need', style: TextStyle(fontSize: 20)),
      ),
      Flexible(
        child: FractionallySizedBox(
          heightFactor: 0.5,
        ),
      ),
      Image.asset('NEED IMAGE', scale: 13),
      Flexible(
        child: FractionallySizedBox(
          heightFactor: 0.1,
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(22.0,0,0,0),
        child: Text('Tomato Seeds', style: TextStyle(fontSize: 13)),
      ),
      Flexible(
        child: FractionallySizedBox(
          heightFactor: 0.2,
        ),
      ),
      Image.asset('NEED PICTURE', scale: 10),
      Flexible(
        child: FractionallySizedBox(
          heightFactor: 0.1,
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(22.0,0,0,0),
        child: Text('Soil/Starting Mix, which you can get at your local supermarket or grocery store. '
            'Quality soil and starting mixtures are Miracle-Gro Potting Mix, Black Gold Organic Potting Soil, and Espoma AP8 8-Quart Organic Potting Soil.',
            style: TextStyle(fontSize: 13)),
        ),
        Flexible(
          child: FractionallySizedBox(
            heightFactor: 0.3,
          ),
        ),
        Image.asset('NEED IMAGE', scale: 14),
        Flexible(
          child: FractionallySizedBox(
            heightFactor: 0.1,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(22.0,0,0,0),
          child: Text('A plant container for the tomato to grow in. The ideal plant container for tomatoes is around 18 inches in diameter. '
              '(Only needed if you are doing a container garden)', style: TextStyle(fontSize: 13)),
        ),
        Image.asset('NEED IMAGE', scale: 14),
        Flexible(
          child: FractionallySizedBox(
            heightFactor: 0.1,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(22.0,0,0,0),
          child: Text('A spray bottle is ideal for tomatoes, as they allow every part of the plant to get watered, instead of just the soil at the bottom. '
              'This specific distribution of water allows tomatoes to grow healthily.)', style: TextStyle(fontSize: 13)),
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



