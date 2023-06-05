import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gardenguide/regions/mid_atlantic.dart';
import 'package:gardenguide/regions/midwest.dart';
import 'package:gardenguide/regions/pacificCoastal.dart';
import 'package:gardenguide/regions/rockymountains.dart';
import 'package:gardenguide/regions/southern.dart';
import 'package:gardenguide/regions/newengland.dart';
import 'package:gardenguide/regions/southwest.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class Recs extends StatefulWidget {
  const Recs({Key? key}) : super(key: key);
  @override
  _RecsState createState() => _RecsState();
}

class _RecsState extends State<Recs> {
  late String search;
  final textController = TextEditingController();
  int charLength = 0;
  final _formKey = GlobalKey<FormState>();

  _onChanged(String value) {
    setState(() {
      charLength = value.length;
    });
  }
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
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}