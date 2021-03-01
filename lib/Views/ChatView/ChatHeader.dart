import 'package:bot_web/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (constext, state) => new Container(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        width: 400,
        height: 50,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.only(
            topLeft: Radius.circular(17.0),
            topRight: Radius.circular(17.0),
          ),
          color: Colors.pink,
        ),
        child: new Row(
          children: [
            Text(
              "Сайн байна уу ${state.userName}. Танд бот хариулж байна.",
              style: GoogleFonts.sourceSansPro(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
