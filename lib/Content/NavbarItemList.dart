import 'package:flutter/widgets.dart';

class NavbarItemList {
  static List<bool> onChangeFocusValues = [true, false, false];
  static List<bool> changeFocus(int index) {
    onChangeFocusValues[onChangeFocusValues.indexOf(true)] = false;
    onChangeFocusValues[index] = true;
    return onChangeFocusValues;
  }

  static List<bool> onHoverValuesList = [false, false, false];
  static List<bool> changeHoverColor(int index, bool value) {
    value == true
        ? onHoverValuesList[index] = true
        : onHoverValuesList[index] = false;
    return onHoverValuesList;
  }

  static final FocusNode homeFocus = new FocusNode();
  static final FocusNode introFocus = new FocusNode();
  static final FocusNode aboutFocus = new FocusNode();

  static final List<FocusNode> focusNodeList = [
    homeFocus,
    introFocus,
    aboutFocus,
  ];

  static int getSelectedFocusNode() {
    return onChangeFocusValues.indexOf(true);
  }
}
