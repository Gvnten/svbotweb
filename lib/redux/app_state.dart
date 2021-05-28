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
  List<String> questionList;
  List<String> answerList;
  List<double> ratingList;
  String question;

  AppState({
    this.userName,
    this.page,
    this.popupWindow,
    this.onHoverValuesList,
    this.changeFocusValues,
    this.getToken,
    this.token,
    this.questionList,
    this.answerList,
    this.ratingList,
    this.question,
  });

  AppState.copyWith({
    AppState prevState,
    String userName,
    Widget page,
    Widget popupWindow,
    List<bool> onHoverValuesList,
    List<bool> changeFocusValues,
    String token,
    List<String> questionList,
    List<String> answerList,
    List<String> ratingList,
    String question,
  }) {
    this.userName = userName ?? prevState.userName;
    this.page = page ?? prevState.page;
    this.popupWindow = popupWindow ?? prevState.popupWindow;
    this.onHoverValuesList = onHoverValuesList ?? prevState.onHoverValuesList;
    this.changeFocusValues = changeFocusValues ?? prevState.changeFocusValues;
    this.token = token ?? prevState.token;
    this.questionList = questionList ?? prevState.questionList;
    this.answerList = answerList ?? prevState.answerList;
    this.ratingList = ratingList ?? prevState.ratingList;
    this.question = question ?? prevState.question;
  }

  AppState.initial({
    String userName,
    Widget page,
    Widget popupWindow,
    List<bool> onHoverValuesList,
    List<bool> changeFocusValues,
    ThunkAction<AppState> getToken,
    String token,
    List<String> questionList,
    List<String> answerList,
    List<double> ratingList,
    String question,
  }) {
    this.userName = userName;
    this.page = page;
    this.popupWindow = popupWindow;
    this.onHoverValuesList = onHoverValuesList;
    this.changeFocusValues = changeFocusValues;
    this.getToken = getToken;
    this.token = token;
    this.answerList = answerList;
    this.questionList = questionList;
    this.ratingList = ratingList;
    this.question = question;
  }
}
