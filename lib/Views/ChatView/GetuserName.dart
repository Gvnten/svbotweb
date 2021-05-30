import 'package:bot_web/Components/ChatPopupWindow.dart';
import 'package:bot_web/actions/Other/ChangePopupWindow.dart';
import 'package:bot_web/actions/Other/saveName.dart';
import 'package:bot_web/middleware/sharedPreferences.dart';
import 'package:bot_web/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          width: 400,
          height: 210,
          child: new Column(
            children: [
              new Container(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                width: 400,
                height: 50,
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                    topLeft: Radius.circular(17.0),
                    topRight: Radius.circular(17.0),
                  ),
                  color: Color(0xff1278bd),
                ),
                child: new Wrap(
                  children: [
                    new FittedBox(
                      child: Text(
                        "Хэрэглэгч та нэрээ оруулна уу!",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'RobotoMono',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30, 25, 30, 25),
                width: 400,
                height: 160,
                decoration: new BoxDecoration(
                  border: new Border.all(
                    color: Color(0xff1278bd),
                    width: 1.0,
                  ),
                  borderRadius: new BorderRadius.only(
                    bottomLeft: Radius.circular(17.0),
                    bottomRight: Radius.circular(17.0),
                  ),
                  color: Colors.white,
                ),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new TextField(
                      cursorColor: Colors.white,
                      autofocus: true,
                      controller: _getUserNameController,
                      maxLines: 1,
                      maxLength: 15,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Color(0xff1278bd),
                        filled: true,
                        hintText: "   Энд бичнэ үү",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'RobotoMono',
                        ),
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'RobotoMono',
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        counterStyle: TextStyle(
                          color: Color(0xff1278bd),
                        ),
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'[a-zA-Z]'), //r'^\d+(?:\.\d+)?$'
                        ),
                      ],
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
                    ),
                    new Visibility(
                      visible: _getUserNameController.text == null ||
                              _getUserNameController.text.isEmpty
                          ? false
                          : true,
                      child: Container(
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                          color: Color(0xff1278bd),
                        ),
                        child: new InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            width: 88,
                            height: 34,
                            child: Text(
                              "Хадгалах",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'RobotoMono',
                              ),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
