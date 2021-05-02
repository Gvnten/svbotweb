import 'package:flutter/cupertino.dart';

class AppState {
  String userName;
  Widget page;
  Widget popupWindow;
  List<bool> onHoverValuesList;
  List<bool> changeFocusValues;

  AppState({
    this.userName,
    this.page,
    this.popupWindow,
    this.onHoverValuesList,
    this.changeFocusValues,
  });

  AppState.copyWith({
    AppState prevState,
    String userName,
    Widget page,
    Widget popupWindow,
    List<bool> onHoverValuesList,
    List<bool> changeFocusValues,
  }) {
    this.userName = userName ?? prevState.userName;
    this.page = page ?? prevState.page;
    this.popupWindow = popupWindow ?? prevState.popupWindow;
    this.onHoverValuesList = onHoverValuesList ?? prevState.onHoverValuesList;
    this.changeFocusValues = changeFocusValues ?? prevState.changeFocusValues;
  }

  AppState.initial({
    String userName,
    Widget page,
    Widget popupWindow,
    List<bool> onHoverValuesList,
    List<bool> changeFocusValues,
  }) {
    this.userName = userName;
    this.page = page;
    this.popupWindow = popupWindow;
    this.onHoverValuesList = onHoverValuesList;
    this.changeFocusValues = changeFocusValues;
  }
}
