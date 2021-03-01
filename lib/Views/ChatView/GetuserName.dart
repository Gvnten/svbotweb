import 'package:bot_web/actions/saveName.dart';
import 'package:bot_web/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_7.dart';
import 'package:flutter_redux/flutter_redux.dart';

class GetUserName extends StatelessWidget {
  final _getUserNameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => new Container(
        margin: EdgeInsets.fromLTRB(70, 100, 80, 180),
        child: new ChatBubble(
          backGroundColor: Colors.amber,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new Text("Нэрээ оруулна уу!"),
              new TextFormField(
                controller: _getUserNameController,
                decoration: InputDecoration(),
              ),
              ElevatedButton(
                child: Text("Хадгалах"),
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(
                    SetUserName(
                      userName: _getUserNameController.text,
                    ),
                  );
                },
              ),
            ],
          ),
          elevation: 0,
          clipper: new ChatBubbleClipper7(type: BubbleType.receiverBubble),
        ),
      ),
    );
  }
}
