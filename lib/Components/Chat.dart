import 'package:bot_web/Views/ChatView/ChatBody.dart';
import 'package:bot_web/Views/ChatView/ChatHeader.dart';
import 'package:bot_web/Views/ChatView/GetUserText.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      // decoration: BoxDecoration(
      //   color: Colors.white70,
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(18),
      //     topRight: Radius.circular(18),
      //     bottomLeft: Radius.circular(18),
      //     bottomRight: Radius.circular(18),
      //   ),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.grey,
      //       spreadRadius: 0.5,
      //       blurRadius: 0.5,
      //     ),
      //   ],
      // ),
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
