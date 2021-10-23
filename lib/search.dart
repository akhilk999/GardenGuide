import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late String search;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[200],
        ),
        title: Text(
            "Search",
            style: TextStyle(fontSize: 20,color: Colors.grey[200],)),
        backgroundColor: Colors.green[600],
      ),
      body: Column(
        children: <Widget> [
          Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 25),
                SizedBox(
                width: 350,
                child: TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    search = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}