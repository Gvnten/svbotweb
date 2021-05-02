import 'package:bot_web/Components/Chat.dart';
import 'package:bot_web/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:popup_windows/popup_windows.dart';

class ChatPopupwindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => new PopupWindowWidget(
        intelligentConversion: true,
        child: Container(
          decoration: new BoxDecoration(
            color: Color(0xff1278bd),
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(15.0),
          margin: EdgeInsets.only(top: 10),
          child: new Icon(
            Icons.messenger,
            color: Colors.white,
          ),
        ),
        showChild: new Chat(),
      ),
    );
  }
}
