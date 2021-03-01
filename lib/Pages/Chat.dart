import 'package:bot_web/Views/ChatView/ChatBody.dart';
import 'package:bot_web/Views/ChatView/ChatHeader.dart';
import 'package:bot_web/Views/ChatView/GetUserText.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        ChatHeader(),
        ChatBody(),
        GetuserText(),
      ],
    );
  }
}
