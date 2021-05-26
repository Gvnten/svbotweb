import 'package:bot_web/Views/ChatView/ChatBody.dart';
import 'package:bot_web/Views/ChatView/ChatHeader.dart';
import 'package:bot_web/Views/ChatView/GetUserText.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(right: 70),
      height: 500,
      width: 400,
      alignment: Alignment.center,
      child: new Flex(
        direction: Axis.vertical,
        children: [
          ChatHeader(),
          ChatBody(),
          GetuserText(),
        ],
      ),
    );
  }
}
