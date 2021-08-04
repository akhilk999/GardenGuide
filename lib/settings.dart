import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}

void main() {
  runApp(
    ChangeNotifierProvider<ThemeState>(
      builder: (context) => ThemeState(),
      child: App(),
    ),  //ChangeNotifierProvider
  );
}

class App extends StatelessWidget {
  get Provider => null;

  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
      theme: Provider.of<ThemeState>(context).theme == ThemeType.Dark
          ? ThemeData.dark()
          : ThemeData.light(),
      
    );
  }
}

enum ThemeType { Dark, Light }

class ThemeState extends ChangeNotifier {
  bool bool_isDarkTheme = false;

  ThemeState() {
    getTheme().then((type)  {
      bool_isDarkTheme = type == ThemeType.Dark;
      notifyListeners();
    });
  }

  ThemeType get theme => bool_isDarkTheme ? ThemeType.Dark : ThemeType.Light;

  get SharedPreferences => null;
  set theme(ThemeType type) => setTheme(type);

  void setTheme(ThemeType type) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool_isDarkTheme = type == ThemeType.Dark;
      bool status = await preferences.setBool('isDark', bool_isDarkTheme);

    if (status) notifyListeners();
  }

  Future<ThemeType> getTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool_isDarkTheme = preferences.getBool('isDark') ?? false;
    return bool_isDarkTheme ? ThemeType.Dark : ThemeType.Light;
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  get Provider => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Switch(
          value: Provider.of<ThemeState>(context).theme == ThemeType.Dark,
          onChanged:  (value) {
            Provider.of<ThemeState>(context).theme =
                value ? ThemeType.Dark  : ThemeType.Light;
            setState(() {});
          },
        ),
      ),
    );
  }
}
