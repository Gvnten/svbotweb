import 'package:bot_web/actions/Other/Question.dart';
import 'package:bot_web/actions/thunk_actions/thunk_actions.dart';
import 'package:bot_web/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class GetuserText extends StatelessWidget {
  final _textFieldController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => new Container(
        width: 400,
        height: 50,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.only(
            bottomLeft: Radius.circular(17.0),
            bottomRight: Radius.circular(17.0),
          ),
          color: Color(0xff1278bd),
        ),
        child: Center(
          child: TextFormField(
            cursorColor: Colors.white,
            autofocus: true,
            autocorrect: false,
            controller: _textFieldController,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontFamily: 'RobotoMono',
            ),
            decoration: new InputDecoration(
              isDense: true,
              hintText: "   Энд бичнэ үү",
              hintStyle: TextStyle(color: Colors.white),
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: EdgeInsets.only(
                left: 20,
                right: 10,
                top: 15,
                bottom: 15,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(17.0),
                  bottomRight: Radius.circular(17.0),
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(Icons.send_sharp),
                color: Colors.white,
                onPressed: () {
                  state.questionList.add(_textFieldController.text);
                  StoreProvider.of<AppState>(context).dispatch(
                    postMessage(),
                  );
                  _textFieldController.clear();
                },
              ),
            ),
            onChanged: (question) {
              StoreProvider.of<AppState>(context).dispatch(
                Question(question: question),
              );
            },
            minLines: 1,
          ),
        ),
      ),
    );
  }
}
