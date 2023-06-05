import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'settings.dart';



class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}



class _ContactState extends State<Contact>{

  var _name;
  var _email;
  var _message;

  final nameCon = new TextEditingController();
  final emailCon = new TextEditingController();
  final messageCon = new TextEditingController();

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
                  child: Text('If you have any questions or suggestions, feel free to contact us through either our email or phone number!', style: TextStyle(fontSize: 19)),
                ),
                Align(alignment: Alignment.centerLeft,
                    child: Container(child: Padding(
                      padding: EdgeInsets.fromLTRB(22,10,0,8),
                      child: Text('Phone Number: 123-456-7890 ', style: TextStyle(fontSize: 18)),
                    ))),
                Align(alignment: Alignment.centerLeft,
                    child: Container(child: Padding(
                      padding: EdgeInsets.fromLTRB(22,10,0,8),
                      child: Text('Email: gardenguide@gmail.com ', style: TextStyle(fontSize: 18)),
                    ))),

                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget> [
                          Container(
                            height: 20,
                          ),
                          TextFormField(
                              controller: nameCon,
                              decoration: InputDecoration(
                                  hintText: 'John David'
                              ),
                              validator: (value){
                                if (value!.isNotEmpty) {
                                  return 'Please enter name';
                                }else if(value.isEmpty){
                                  return 'Thank you for your feedback!';
                                }
                              }
                          ),
                          TextFormField(
                              controller: emailCon,
                              decoration :InputDecoration(
                                  hintText: 'name@example.com'

                              ),
                              validator: (value){
                                if (value!.isNotEmpty){
                                  return 'Please enter name';
                                }else if(value.isEmpty){
                                  return 'Thank you for your feedback!';
                                }
                              }

                          ),

                          TextFormField(
                              controller: messageCon,
                              decoration :InputDecoration(
                                  hintText: 'Enter your message'

                              ),
                              validator: (value){
                                if (value!.isNotEmpty){
                                  return 'Please enter content';
                                }else if(value.isEmpty){
                                  return 'Thank you for your feedback!';
                                }
                              }
                          ),
                          Container(
                            height: 30,
                          ),
                          ElevatedButton(
                            //style: ButtonStyle(),
                            onPressed: (){
                              setState(() {

                                final text = 'Thank you for your feedback!';
                                final snackBar = SnackBar(content: Text(text));
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                _name=nameCon.text;
                                _email = emailCon.text;
                                _message = messageCon.text;
                                nameCon.clear();
                                emailCon.clear();
                                messageCon.clear();
                              });
                            },
                              child:Text('Submit')
                          )
                          /*
                          RaisedButton(onPressed:(){
                            setState(() {

                              final text = 'Thank you for your feedback!';
                              final snackBar = SnackBar(content: Text(text));
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              _name=nameCon.text;
                              _email = emailCon.text;
                              _message = messageCon.text;
                              nameCon.clear();
                              emailCon.clear();
                              messageCon.clear();
                            });
                          },
                              child:Text('Submit')
                          ),
                          */
                        ]
                    )
                )
              ],
            )

        )
    );
  }
}



