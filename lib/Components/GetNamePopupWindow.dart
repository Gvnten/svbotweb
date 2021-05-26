import 'package:bot_web/Views/ChatView/GetuserName.dart';
import 'package:bot_web/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:popup_windows/popup_windows.dart';

class GetNamePopupwindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => SafeArea(
        child: new PopupWindowWidget(
          intelligentConversion: true,
          child: Container(
            color: Color(0xff1278bd),
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Чат',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
          ),
          showChild: new GetUserName(),
        ),
      ),
    );
  }
}
