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
        body: Container(
          child: Align(
            alignment: Alignment(0.00,-0.90),
            child:Text('Favorites',
                style: TextStyle(fontSize: 30)

            ),
          ),
        ));

  }
}