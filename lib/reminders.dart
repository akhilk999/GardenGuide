import 'package:flutter/material.dart';

class Reminders extends StatefulWidget {
  @override
  _RemindersState createState() => _RemindersState();
}
class HeroDialogRoute<T> extends PageRoute<T> {
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
}

abstract class AppColors {
  /// Dark background color.
  static const Color backgroundColor = Color(0xFF191D1F);

  /// Slightly lighter version of [backgroundColor].
  static const Color backgroundFadedColor = Color(0xFF191B1C);

  /// Color used for cards and surfaces.
  static const Color cardColor = Color(0xFF1F2426);

  /// Accent color used in the application.
  static const Color accentColor = Color(0xFFef8354);
}
class _RemindersState extends State<Reminders> {
  final TextEditingController controller = new TextEditingController();

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
            return  _AddTodoPopupCard(key: ValueKey(null));
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
                      cursorColor: Colors.white,
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
                        Navigator.pop(context);},
                      child: const Text('Add'),
                    ),
                    new Text(result, style: TextStyle(fontSize: 30))
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

