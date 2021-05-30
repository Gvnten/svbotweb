import 'package:flutter/material.dart';

class AboutContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Divider(),
          Text("About content"),
        ],
      ),
    );
  }
}
