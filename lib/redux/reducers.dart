import 'package:bot_web/actions/AnswerListAction.dart';
import 'package:bot_web/actions/ChangeHoverTextColor.dart';
import 'package:bot_web/actions/ChangePopupWindow.dart';
import 'package:bot_web/actions/QuestionListAction.dart';
import 'package:bot_web/actions/Question.dart';
import 'package:bot_web/actions/RatingListAction.dart';
import 'package:bot_web/redux/app_state.dart';
import '../actions/ChangeContentAction.dart';
import '../actions/SetToken.dart';
import '../actions/saveName.dart';
import 'app_state.dart';

AppState appReducer(AppState prevState, dynamic action) {
  if (action is SetUserName) {
    return new AppState.copyWith(
      prevState: prevState,
      userName: action.userName,
    );
  } else if (action is ChangeContentAction) {
    return new AppState.copyWith(
      prevState: prevState,
      page: action.page,
      changeFocusValues: action.changeFocusValues,
    );
  } else if (action is ChangeHoverTextColor) {
    return new AppState.copyWith(
      prevState: prevState,
    );
  } else if (action is ChangePopupWindow) {
    return new AppState.copyWith(
      prevState: prevState,
      popupWindow: action.popupWindow,
    );
  } else if (action is Question) {
    return new AppState.copyWith(
      prevState: prevState,
      question: action.question,
    );
  } else if (action is SetToken) {
    return new AppState.copyWith(
      prevState: prevState,
      token: action.token,
    );
  } else if (action is QuestionListAction) {
    return new AppState.copyWith(
      prevState: prevState,
      questionList: action.questionList,
    );
  } else if (action is AnswerListAction) {
    return new AppState.copyWith(
      prevState: prevState,
      answerList: action.answerList,
    );
  } else if (action is RatingListAction) {
    return new AppState.copyWith(
      prevState: prevState,
      ratingList: action.ratingList,
    );
  } else {
    return prevState;
  }
}
