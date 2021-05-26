import 'package:bot_web/Pages/Homepage.dart';
import 'package:bot_web/routes/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'route_names.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.HomeRoute:
        return _GeneratePageRoute(
          widget: HomePage(),
          routeName: settings.name,
        );
      default:
        return _GeneratePageRoute(
          widget: HomePage(),
          routeName: settings.name,
        );
    }
  }
}

class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String routeName;
  _GeneratePageRoute({this.widget, this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: Duration(milliseconds: 500),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: Offset.infinite,
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}

// class DialogRouteGenerator {
//   static Route<dynamic> generateDialogBuilder(
//     BuildContext context,
//     dynamic argument,
//   ) {
//     return DialogRoute<void>(
//       context: context,
//       builder: (BuildContext context) => PopupWindowWidget(
//         showChild: Container(
//           height: 200.0,
//           alignment: Alignment.bottomCenter,
//           color: Color(0X33000000),
//           child: Container(
//             height: 100.0,
//             color: Colors.blueAccent,
//           ),
//         ),
//         child: Container(
//           child: Text("Container"),
//         ),
//       ),
//     );
//   }
// }
