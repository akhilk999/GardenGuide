import 'package:flutter/material.dart';

class Reminders extends StatefulWidget {
  @override
  _RemindersState createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  TextEditingController customController = TextEditingController();
  late String valueText = '';
  late String codeDialog = '';
  createAlertDialog(BuildContext context){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text(
          'Reminder:'),
        content: TextField(
          onChanged: (value) {
            setState(() {
              valueText = value;
            });
          },
          controller: customController,
        ),

        actions: <Widget>[
          /*ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
              primary: Colors.green,
              textStyle: TextStyle(fontSize: 15)
          ),child: Text('Submit')),*/
          MaterialButton(child: Text('Go Back', style: TextStyle(fontSize: 16)),onPressed: (){
            Navigator.of(context).pop();
          },),
          MaterialButton(child: Text('Submit', style: TextStyle(fontSize: 16)),onPressed: (){
            codeDialog = valueText;
            Navigator.of(context).pop(customController.text);
            },),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(''),
          Text(''),
          Text(''),
          Text(''),
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.9
            ),
          ),
          Text(valueText),
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 1,
            ),
          ),
          Row(
            children: [
              Flexible(
                child: FractionallySizedBox(
                  widthFactor: 0.9,
                ),
              ),
              ElevatedButton.icon(
                label: Text('Add'),
                onPressed: () {
                  createAlertDialog(context).then((value){
                  });
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    textStyle: TextStyle(
                      fontSize: 20,
                    )
                ),
                icon: Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}