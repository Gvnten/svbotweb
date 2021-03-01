import 'package:bot_web/actions/saveName.dart';
import 'package:bot_web/redux/app_state.dart';

AppState appReducer(AppState prevState, dynamic action) {
  if (action is SetUserName) {
    // print("_____________________________");
    // print("Printing action");
    // print(action);
    // print("Printing prev user name");
    // print(prevState.userName);
    // print("Printing new user name");
    // print(action.userName);
    return AppState.copyWith(
      prevState: prevState,
      username: action.userName,
    );
  } else {
    return prevState;
  }
}
