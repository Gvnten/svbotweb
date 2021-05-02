import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 400,
      height: 400,
      color: Colors.white,
      child: new ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return new SingleChildScrollView(
            physics: new NeverScrollableScrollPhysics(),
          );
        },
      ),
    );
  }
}
