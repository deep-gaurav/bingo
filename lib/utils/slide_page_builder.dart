import 'package:flutter/cupertino.dart';

class SlidePageBuilder extends PageRouteBuilder {
  SlidePageBuilder({
    required Widget Function(BuildContext) builder,
    RouteSettings? settings,
  }) : super(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) =>
              builder(context),
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    var tween = Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0));
    var anim =
        CurvedAnimation(parent: animation, curve: Curves.easeOut).drive(tween);
    return SlideTransition(
      position: anim,
      child: child,
    );
  }
}
