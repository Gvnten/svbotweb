import 'package:bot_web/Components/ChatPopupWindow.dart';
import 'package:bot_web/actions/ChangePopupWindow.dart';
import 'package:bot_web/actions/saveName.dart';
import 'package:bot_web/middleware/sharedPreferences.dart';
import 'package:bot_web/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_7.dart';
import 'package:flutter_redux/flutter_redux.dart';

class GetUserName extends StatelessWidget {
  final _getUserNameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => new Container(
        margin: const EdgeInsets.only(right: 80),
        child: new Container(
          width: 250,
          height: 130,
          child: new ChatBubble(
            backGroundColor: Color(0xff1278bd),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new Text(
                  "Нэрээ оруулна уу!",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: new TextFormField(
                    decoration: InputDecoration(
                      counterStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    maxLength: 15,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r'[a-zA-Z]'), //r'^\d+(?:\.\d+)?$'
                      ),
                    ],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                    onChanged: (name) {
                      StoreProvider.of<AppState>(context).dispatch(
                        SetUserName(
                          userName: _getUserNameController.text,
                        ),
                      );
                    },
                    cursorColor: Colors.white,
                    autofocus: true,
                    controller: _getUserNameController,
                  ),
                ),
                Visibility(
                  visible: _getUserNameController.text == null ||
                          _getUserNameController.text.isEmpty
                      ? false
                      : true,
                  child: new InkWell(
                    child: Text(
                      "Хадгалах",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RobotoMono',
                      ),
                    ),
                    onTap: () async {
                      SharedPref.setName(_getUserNameController.text);
                      StoreProvider.of<AppState>(context).dispatch(
                        ChangePopupWindow(
                          popupWindow: new ChatPopupwindow(),
                        ),
                      );
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            elevation: 0,
            clipper: new ChatBubbleClipper7(type: BubbleType.sendBubble),
          ),
        ),
      ),
    );
  }
}
