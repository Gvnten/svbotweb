import 'package:flutter/material.dart';

class IntroContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Divider(),
          Text("Intro content"),
        ],
      ),
    );
  }
}
