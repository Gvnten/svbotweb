import 'package:bot_web/Components/NavigationBar/navigationbar.dart';
import 'package:bot_web/Pages/Chat.dart';
import 'package:bot_web/Pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:kumi_popup_window/kumi_popup_window.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: new Container(
          child: new Column(
            children: [
              new Navigationbar(),
              new Pages(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showPopupWindow(
          context,
          bgColor: Colors.grey.withOpacity(0.5),
          clickOutDismiss: true,
          clickBackDismiss: true,
          customAnimation: false,
          customPop: false,
          customPage: false,
          underStatusBar: false,
          underAppBar: false,
          gravity: KumiPopupGravity.rightBottom,
          offsetX: 65,
          offsetY: 60,
          duration: Duration(milliseconds: 200),
          childFun: (pop) {
            return new Container(
              key: GlobalKey(),
              height: 500,
              width: 400,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.all(
                  Radius.circular(17.0),
                ),
              ),
              child: new Chat(),
            );
          },
        ),
        child: Icon(
          Icons.chat_rounded,
          color: Colors.purple,
        ),
      ),
    );
  }
}
