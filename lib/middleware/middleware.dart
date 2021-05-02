import 'dart:convert';

import 'package:bot_web/actions/ErrorMsg.dart';
import 'package:bot_web/actions/Getjoke.dart';
import 'package:bot_web/actions/Loading.dart';
import 'package:bot_web/redux/app_state.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:http/http.dart' as http;

ThunkAction<AppState> getData() {
  return (Store<AppState> store) async {
    store.dispatch(Loading());
    try {
      final response = await http.get(
        Uri.parse('https://api.chucknorris.io/jokes/random'),
      );
      final responseBody = json.decode(response.body);
      store.dispatch(
        GetJoke(
          joke: responseBody['value'],
        ),
      );
      print(responseBody['value']);
    } catch (e) {
      store.dispatch(
        ErrorMsg(
          message: e.toString(),
        ),
      );
    }
  };
}
