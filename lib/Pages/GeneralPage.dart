import 'package:flutter/material.dart';

class GeneralPage extends StatelessWidget {
  final Widget child;

  const GeneralPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: child,
    );
  }
}
