import 'package:flutter/material.dart';
import 'package:gardening_app/dashboard.dart';
import 'package:gardening_app/reminders.dart';
import 'package:gardening_app/search.dart';
import 'settings.dart';

import 'package:gardening_app/tutorials.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
        defaultBrightness: Brightness.light,
        builder: (context, _brightness) {
          return MaterialApp(
              theme: ThemeData(
                  primarySwatch: Colors.blue, brightness: _brightness),
              home: BottomBar());
        });
  }
}

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  String _title = 'GardenGuide';
  final List<Widget> children = [
    Dashboard(),
    Search(),
    Tutorial(),
    Reminders(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        selectedFontSize: 15,
        backgroundColor: Colors.green[600],
        selectedItemColor: Colors.grey[200],
        unselectedItemColor: Colors.grey[400],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: 'Tutorials'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Reminders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            switch (index) {
              case 0:
                {
                  _title = 'Dashboard';
                }
                break;
              case 1:
                {
                  _title = 'Search';
                }
                break;
              case 2:
                {
                  _title = 'Tutorials';
                }
                break;
              case 3:
                {
                  _title = 'Reminders';
                }
                break;
              case 4:
                {
                  _title = 'Settings';
                }
                break;
            }
          });
        },
      ),
    );
  }
}

/*class MainScreen extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[600],
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: //Image.asset('images/mainscreenicon.png', scale: 0.9),
                Text(
                  'GardenGuide',
                  style: TextStyle(
                      fontSize: 40,
                    color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
              ),
              ),
              Flexible(
                child: FractionallySizedBox(
                  heightFactor: 0.5,
                ),
              ),
              Flexible(
                  child: FractionallySizedBox(
                    widthFactor: 0.45,
                    heightFactor: 0.35,
                    child: RaisedButton(
                      color: Colors.blue[600],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Dashboard())
                        );
                      },
                      child: Text(
                          "Next",
                          style: TextStyle(fontSize: 25,color: Colors.grey[200],)
                      ),
                    ),
                  )
              ),
              Flexible(
                child: FractionallySizedBox(
                  heightFactor: 0.3,
                ),
              ),
            ],
          )
      ),
    );
  }
}*/
