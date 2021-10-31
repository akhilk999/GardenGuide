import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gardening_app/regions/mid_atlantic.dart';
import 'package:gardening_app/regions/midwest.dart';
import 'package:gardening_app/regions/pacificCoastal.dart';
import 'package:gardening_app/regions/rockymountains.dart';
import 'package:gardening_app/regions/southern.dart';
import 'package:gardening_app/regions/newengland.dart';
import 'package:gardening_app/regions/southwest.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

late String region ='';
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
    region = value;
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