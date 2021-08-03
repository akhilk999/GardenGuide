import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[200],
        ),
        title: Text('Dashboard', style: TextStyle(fontSize: 20,color: Colors.grey[200],)),
        backgroundColor: Colors.green[600],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green[600],
        selectedItemColor: Colors.grey[200],
        unselectedItemColor: Colors.grey[400],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Reminders'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Tutorials'),
          //BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Search', styleN: TextStyle(color: Colors.green[600])),),
          //BottomNavigationBarItem(icon: Icon(Icons.notifications), title: Text('Reminders', style: TextStyle(color: Colors.green[600])),),
          //BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Settings', style: TextStyle(color: Colors.green[600])),),
         // BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Tutorials', style: TextStyle(color: Colors.green[600])),),
        ],
      ),
    );
  }
}