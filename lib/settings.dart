import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gardening_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[200],
        ),
        title: Text(
            "Settings",
            style: TextStyle(fontSize: 20,color: Colors.grey[200],)),
        backgroundColor: Colors.green[600],
      ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: FractionallySizedBox(
                    //heightFactor: 0.005,
                  ),
                ),
                Text('Appearance',style: TextStyle(fontSize: 30)),
                Flexible(
                  child: FractionallySizedBox(
                    heightFactor: 0.1,
                  ),
                ),
                Switch(value: isSwitched, onChanged: (state){
                  setState(() {
                    this.isSwitched = state;
                    _incrementCounter();
                  });
                })
              ]
          ),
        ),
    );
  }
  void _incrementCounter() {
    ThemeBuilder.of(context)!.changeTheme();
  }
}


class ThemeBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, Brightness brightness) builder;
  final Brightness defaultBrightness;

  ThemeBuilder({required this.builder, required this.defaultBrightness});

  @override
  _ThemeBuilderState createState() => _ThemeBuilderState();

  static _ThemeBuilderState? of(BuildContext context) {
    return context.findAncestorStateOfType<_ThemeBuilderState>();
  }
}

class _ThemeBuilderState extends State<ThemeBuilder> {
  late Brightness _brightness;

  @override
  void initState(){
    super.initState();
    _brightness = widget.defaultBrightness;

    if(mounted){
      setState(() {

      });
    }
  }

  void changeTheme() {
    setState(() {
      _brightness =
      _brightness == Brightness.dark ? Brightness.light : Brightness.dark;
    });
  }
  Brightness getCurrentTheme()
  {
    return _brightness;
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _brightness);
  }
}