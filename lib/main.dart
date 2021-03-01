import 'package:bot_web/Pages/Homepage.dart';
import 'package:bot_web/redux/app_state.dart';
import 'package:bot_web/redux/reducers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  final Store<AppState> _store = Store<AppState>(
    appReducer,
    initialState: AppState.initial(),
  );
  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store store;

  const MyApp({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => HomePage(),
        },
      ),
    );
  }
}
