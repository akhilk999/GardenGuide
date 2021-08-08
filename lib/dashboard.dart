import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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