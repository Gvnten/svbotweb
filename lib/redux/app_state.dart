import 'package:flutter/cupertino.dart';
import 'package:redux_thunk/redux_thunk.dart';

class AppState {
  String userName;
  Widget page;
  Widget popupWindow;
  List<bool> onHoverValuesList;
  List<bool> changeFocusValues;
  ThunkAction<AppState> getToken;
  String token;
  String question;
  //String answer;
  List<String> answerquestionlist;
  List<Map<String, dynamic>> aql;

  AppState({
    this.userName,
    this.page,
    this.popupWindow,
    this.onHoverValuesList,
    this.changeFocusValues,
    this.getToken,
    this.token,
    //this.answer,
    this.question,
    this.answerquestionlist,
    this.aql,
  });

  AppState.copyWith({
    AppState prevState,
    String userName,
    Widget page,
    Widget popupWindow,
    List<bool> onHoverValuesList,
    List<bool> changeFocusValues,
    String token,
    //String answer,
    String question,
    List<String> answerquestionlist,
    List<Map<String, dynamic>> aql,
  }) {
    this.userName = userName ?? prevState.userName;
    this.page = page ?? prevState.page;
    this.popupWindow = popupWindow ?? prevState.popupWindow;
    this.onHoverValuesList = onHoverValuesList ?? prevState.onHoverValuesList;
    this.changeFocusValues = changeFocusValues ?? prevState.changeFocusValues;
    this.token = token ?? prevState.token;
    //this.answer = answer ?? prevState.answer;
    this.question = question ?? prevState.question;
    this.answerquestionlist =
        answerquestionlist ?? prevState.answerquestionlist;
    this.aql = aql ?? prevState.aql;
  }

  AppState.initial({
    String userName,
    Widget page,
    Widget popupWindow,
    List<bool> onHoverValuesList,
    List<bool> changeFocusValues,
    ThunkAction<AppState> getToken,
    String token,
    //String answer,
    String question,
    List<String> answerquestionlist,
    List<Map<String, dynamic>> aql,
  }) {
    this.userName = userName;
    this.page = page;
    this.popupWindow = popupWindow;
    this.onHoverValuesList = onHoverValuesList;
    this.changeFocusValues = changeFocusValues;
    this.getToken = getToken;
    this.token = token;
    //this.answer = answer;
    this.question = question;
    this.answerquestionlist = answerquestionlist;
    this.aql = aql;
  }
}
