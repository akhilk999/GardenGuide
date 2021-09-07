import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'task.dart';

class Reminders extends StatefulWidget {
  @override
  _RemindersState createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  var _taskController;
  late List<Task> _tasks;
  late List<bool> _tasksDone;

  void saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Task t = Task.fromString(_taskController.text);
    String? tasks = prefs.getString('task');
    List list = (tasks == null) ? [] : json.decode(tasks);
    print(list);
    list.add(json.encode(t.getMap()));
    print(list);
    prefs.setString('task', json.encode(list));
    _taskController.text = '';
    Navigator.of(context).pop();

    _getTasks();
  }

  void _getTasks() async {
    _tasks = [];
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? tasks = prefs.getString('task');
    List list = (tasks == null) ? [] : json.decode(tasks);
    for (dynamic d in list) {
      _tasks.add(Task.fromMap(json.decode(d)));
    }

    print(_tasks);

    _tasksDone = List.generate(_tasks.length, (index) => false);
    setState(() {});
  }

  void updatePendingTasksList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<Task> pendingList = [];
    for (var i = 0; i < _tasks.length; i++)
      if (!_tasksDone[i]) pendingList.add(_tasks[i]);

    var pendingListEncoded = List.generate(
        pendingList.length, (i) => json.encode(pendingList[i].getMap()));

    prefs.setString('task', json.encode(pendingListEncoded));

    _getTasks();
  }

  @override
  void initState() {
    super.initState();
    _taskController = TextEditingController();

    _getTasks();
  }

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task Manager',
          style: GoogleFonts.montserrat(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: updatePendingTasksList,
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setString('task', json.encode([]));

              _getTasks();
            },
          ),
        ],
      ),
      body: (_tasks == null)
          ? Center(
        child: Text('No Tasks added yet!'),
      )
          : Column(
        children: _tasks
            .map((e) => Container(
          height: 70.0,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          padding: const EdgeInsets.only(left: 10.0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                e.task,
                style: GoogleFonts.montserrat(),
              ),
              Checkbox(
                value: _tasksDone[_tasks.indexOf(e)],
                key: GlobalKey(),
                onChanged: (val) {
                  setState(() {
                    _tasksDone[_tasks.indexOf(e)] = val!;
                  });
                },
              ),
            ],
          ),
        ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext context) => Container(
            padding: const EdgeInsets.all(10.0),
            height: 250,
            color: Colors.blue[200],
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add task',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(Icons.close),
                    ),
                  ],
                ),
                Divider(thickness: 1.2),
                SizedBox(height: 20.0),
                TextField(
                  controller: _taskController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Enter task',
                    hintStyle: GoogleFonts.montserrat(),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: MediaQuery.of(context).size.width,
                  // height: 200.0,
                  child: Row(
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width / 2) - 20,
                        child: RaisedButton(
                          color: Colors.white,
                          child: Text(
                            'RESET',
                            style: GoogleFonts.montserrat(),
                          ),
                          onPressed: () => _taskController.text = '',
                        ),
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width / 2) - 20,
                        child: RaisedButton(
                          color: Colors.blue,
                          child: Text(
                            'ADD',
                            style: GoogleFonts.montserrat(),
                          ),
                          onPressed: () => saveData(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*class HeroDialogRoute<T> extends PageRoute<T> {
  /// {@macro hero_dialog_route}
  HeroDialogRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool fullscreenDialog = false,
  })  : _builder = builder,
        super(settings: settings, fullscreenDialog: fullscreenDialog);

  final WidgetBuilder _builder;

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissble => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  bool get maintainState => true;

  @override
  Color get barrierColor => Colors.black54;

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return _builder(context);
  }

  @override
  String get barrierLabel => 'Popup dialog open';
}*/

/*abstract class AppColors {
  /// Dark background color.
  static const Color backgroundColor = Color(0xFF191D1F);


  /// Color used for cards and surfaces.
  static const Color cardColor = Color(0xFF1F2426);

  /// Accent color used in the application.
  static const Color accentColor = Color(0xFFef8354);
}
class _RemindersState extends State<Reminders> {
  TextEditingController passController = new TextEditingController();

  String result = "";
/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 30,),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: new InputDecoration(
                          hintText: "Type here"
                      ),
                      onSubmitted: (String str) {
                        setState(() {
                          result = result + "\n" + str;
                        });
                        controller.text = '';
                      },
                      controller: controller,
                    ),
                  ),
                  new Text(result, style: TextStyle(fontSize: 30))
                ],
              ),
            ),
          ),
        )
    );
  }
}
/*


 */
 */
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(HeroDialogRoute(builder: (context) {
            return  _AddTodoPopupCard(key: ValueKey('ok'));
          }));
        },
        child: Hero(
          tag: _heroAddTodo,
          child: Material(
            color: AppColors.accentColor,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: const Icon(
              Icons.add_rounded,
              size: 56,
            ),
          )
        ),
      ),
    );
  }
}
const String _heroAddTodo = 'add-todo-hero';
/// {@template add_todo_popup_card}
/// Popup card to add a new [Todo]. Should be used in conjuction with
/// [HeroDialogRoute] to achieve the popup effect.
///
/// Uses a [Hero] with tag [_heroAddTodo].
/// {@endtemplate}
class _AddTodoPopupCard extends StatefulWidget {
  _AddTodoPopupCard({required Key key}) : super(key: key);
  @override
  __AddTodoPopupCardState createState() => new __AddTodoPopupCardState();
}
class __AddTodoPopupCardState extends State<_AddTodoPopupCard> {
  /// {@macro add_todo_popup_card}
  String result = "";
  late TextEditingController _controller = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  var controller;
  var controller2;
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Padding(
        padding: new EdgeInsets.all(32.0),
        child: new Hero(
          tag: _heroAddTodo,
          //createRectTween: (begin, end) {
           // return CustomRectTween(begin: begin, end: end);
          //},
          child: new Material(
            color: AppColors.accentColor,
            elevation: 2,
            shape:
            new RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: new SingleChildScrollView(
              child: new Padding(
                padding: new EdgeInsets.all(16.0),
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    new TextField(
                      decoration: new InputDecoration(
                        hintText: 'New todo',
                        border: InputBorder.none,
                      ),
                      cursorColor: Colors.green,
                      controller: _controller,
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 0.2,
                    ),
                    TextField(
                      controller: _controller2,
                      decoration: InputDecoration(
                        hintText: 'Write a note',
                        border: InputBorder.none,
                      ),
                      cursorColor: Colors.white,
                      //maxLines: 6,
                      onSubmitted: (String str) {
                      },
                    ),


                    const Divider(
                      color: Colors.green,
                      thickness: 0.2,
                    ),
                    RaisedButton(onPressed: () {
                      controller=_controller.text;
                      //_controller2=_controller2.text as TextEditingController;
                      Navigator.pop(context);
                      },
                      child: const Text('Add'),
                    ),
                    new Text(controller, style: TextStyle(fontSize: 30))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class ConstrainedView extends StatelessWidget {
  const ConstrainedView({
    Key? key,
    required this.child,
    this.width = 250,
  }) : super(key: key);
  final Widget child;
  final double width;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if (constraints.maxWidth < width) {
          return const Text (' ');
        }
        return child;
      },
    );
  }
}
*/
