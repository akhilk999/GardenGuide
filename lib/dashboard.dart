import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey[200],
          ),
          title: Text(
              "Dashboard",
              style: TextStyle(fontSize: 20,color: Colors.grey[200],)),
          backgroundColor: Colors.green[600],
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
                child: Text('Welcome to GardenGuide!',
                      style: TextStyle(fontSize: 30)
                  ),
                ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 25, 15, 0),
                child: Text('- This app will be able to provide many resources any person would need to build a garden including: ',
                    style: TextStyle(fontSize: 17)
                ),
              ),
              Align(alignment: Alignment.centerLeft,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(50, 15, 15, 0),
                    child: Text('- Tutorials on how to grow each flower',
                        style: TextStyle(fontSize: 16)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 15, 15, 0),
                child: Text('- Help for people around US in different locations by providing recommendations for each region',
                    style: TextStyle(fontSize: 16)
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 15, 15, 0),
                child: Text('- Find nearby gardens in our Search page to get extra help if needed',
                    style: TextStyle(fontSize: 16)
                ),
              ),


              Align(alignment: Alignment.centerLeft,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 65, 15, 0),
                    child: Text('- Other benefits include: ',
                        style: TextStyle(fontSize: 17)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 15, 15, 0),
                child: Text('- Increase in engagement of activities that lowers depression rates due to having a better mood',
                    style: TextStyle(fontSize: 16)
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 15, 15, 0),
                child: Text('- Helps the community through an increase of nutritious food in urban markets',
                    style: TextStyle(fontSize: 16)
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 15, 15, 0),
                child: Text('- Can help reduce environmental hazards and creates more sustainable area for everyone',
                    style: TextStyle(fontSize: 16)
                ),
              ),
            ]
          ),
        ));

  }
}