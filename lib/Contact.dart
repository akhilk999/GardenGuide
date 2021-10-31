import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'settings.dart';



class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      iconTheme: IconThemeData(
      color: Colors.grey[200]
      ),
     title:Text(
        "Contact Us",
          style: TextStyle(fontSize: 20,color: Colors.grey[200],)),
        backgroundColor: Colors.green[600],
      ),
        body: Center(
          child: Column(
            children:[
              Flexible(
                child:FractionallySizedBox(
                  heightFactor: 0.3,
                  )),

              Padding(
                padding: EdgeInsets.fromLTRB(22,10,10,8),
                child: Text('If you have any questions or suggestions, feel free to contact us through either our email or phone number!', style: TextStyle(fontSize: 17)),
              ),
              Align(alignment: Alignment.centerLeft,
                  child: Container(child: Padding(
                    padding: EdgeInsets.fromLTRB(22,10,0,8),
                    child: Text('Phone Number: 972-469-3673 ', style: TextStyle(fontSize: 18)),
                  ))),
              Align(alignment: Alignment.centerLeft,
                  child: Container(child: Padding(
                    padding: EdgeInsets.fromLTRB(22,10,0,8),
                    child: Text('Email: gardeningapp.com@gmail.com ', style: TextStyle(fontSize: 18)),
                  ))),
                ],
                )
          )
        );
  }
}

