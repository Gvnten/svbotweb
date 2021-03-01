import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(context),
          );
        } else {
          return new Column(
            children: pageChildren(context),
          );
        }
      },
    );
  }

  List<Widget> pageChildren(BuildContext context) {
    return <Widget>[
      new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: new Column(
          children: [
            new Text(""),
          ],
        ),
      ),
    ];
  }
}
