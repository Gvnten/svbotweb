import 'package:bot_web/actions/ChangeHoverTextColor.dart';
import 'package:bot_web/actions/ChangePopupWindow.dart';

import 'package:bot_web/redux/app_state.dart';

import '../actions/ChangeContentAction.dart';
import '../actions/saveName.dart';

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
  } else {
    return prevState;
  }
}
