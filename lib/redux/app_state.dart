import 'package:flutter/cupertino.dart';

class AppState {
  String userName;
  Widget page;
  Widget popupWindow;
  List<bool> onHoverValuesList;
  List<bool> changeFocusValues;
  String token;
  List<String> questionList;
  List<String> answerList;
  List<double> ratingList;
  List<dynamic> feedbackList;
  String question;
  bool isRated;
  List<dynamic> newsList;

  AppState({
    this.userName,
    this.page,
    this.popupWindow,
    this.onHoverValuesList,
    this.changeFocusValues,
    this.newsList,
    this.token,
    this.questionList,
    this.answerList,
    this.ratingList,
    this.feedbackList,
    this.question,
    this.isRated,
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
    List<dynamic> feedbackList,
    String question,
    bool isRated,
    List<dynamic> newsList,
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
    this.feedbackList = feedbackList ?? prevState.feedbackList;
    this.question = question ?? prevState.question;
    this.isRated = isRated ?? prevState.isRated;
    this.newsList = newsList ?? prevState.newsList;
  }

  AppState.initial({
    String userName,
    Widget page,
    Widget popupWindow,
    List<bool> onHoverValuesList,
    List<bool> changeFocusValues,
    List<dynamic> newsList,
    String token,
    List<String> questionList,
    List<String> answerList,
    List<double> ratingList,
    List<dynamic> feedbackList,
    String question,
    bool isRated,
  }) {
    this.userName = userName;
    this.page = page;
    this.popupWindow = popupWindow;
    this.onHoverValuesList = onHoverValuesList;
    this.changeFocusValues = changeFocusValues;
    this.newsList = newsList;
    this.token = token;
    this.answerList = answerList;
    this.questionList = questionList;
    this.ratingList = ratingList;
    this.feedbackList = feedbackList;
    this.question = question;
    this.isRated = isRated;
  }
}
