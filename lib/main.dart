import 'package:bot_web/Components/ChatPopupWindow.dart';
import 'package:bot_web/Components/GetNamePopupWindow.dart';
import 'package:bot_web/Content/NavbarItemList.dart';
import 'package:bot_web/Pages/GeneralPage.dart';
import 'package:bot_web/Content/HomeContent.dart';
import 'package:bot_web/middleware/sharedPreferences.dart';
import 'package:bot_web/redux/app_state.dart';
import 'package:bot_web/redux/reducers.dart';
import 'package:bot_web/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'Pages/GeneralPage.dart';
import 'middleware/api.dart';
import 'middleware/sharedPreferences.dart';

void main() async {
  SharedPref.removeTempToken();
  await new Api().getToken();
  final Store<AppState> _store = new Store<AppState>(
    appReducer,
    initialState: new AppState.initial(
      userName: await SharedPref.getValue() ?? null,
      page: new HomeContent(),
      popupWindow: await SharedPref.checkUser() == false
          ? new GetNamePopupwindow()
          : new ChatPopupwindow(),
      onHoverValuesList: NavbarItemList.onHoverValuesList,
      changeFocusValues: NavbarItemList.onChangeFocusValues,
      question: null,
      answerList: [],
      questionList: [],
      ratingList: [],
      newsList: await new Api().getNewsList(),
      feedbackList: await new Api().getFeedbacklist(),
      isRated: true,
    ),
    middleware: [
      thunkMiddleware,
    ],
  );

  runApp(
    new MyApp(store: _store),
  );
}

class MyApp extends StatelessWidget {
  final Store store;

  const MyApp({this.store});

  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Chat bot',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        builder: (context, child) => new GeneralPage(
          child: child,
        ),
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
