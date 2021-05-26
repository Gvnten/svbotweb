import 'package:bot_web/Content/AboutContent.dart';
import 'package:bot_web/Content/HomeContent.dart';
import 'package:bot_web/Content/IntroContent.dart';
import 'package:bot_web/Content/NavbarItemList.dart';
import 'package:bot_web/actions/ChangeContentAction.dart';
import 'package:bot_web/actions/ChangeHoverTextColor.dart';
import 'package:bot_web/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => SafeArea(
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 1000),
            child: new Container(
              child: new Padding(
                padding: EdgeInsets.all(20),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new InkWell(
                      autofocus: true,
                      focusColor: Color(0xff1278bd),
                      focusNode: NavbarItemList.homeFocus,
                      hoverColor: Color(0xff1278bd),
                      onTap: () {
                        NavbarItemList.introFocus.unfocus();
                        FocusScope.of(context).requestFocus(
                          NavbarItemList.homeFocus,
                        );
                        StoreProvider.of<AppState>(context).dispatch(
                          ChangeContentAction(
                            page: HomeContent(),
                            changeFocusValues: NavbarItemList.changeFocus(0),
                          ),
                        );
                      },
                      onHover: (value) {
                        StoreProvider.of<AppState>(context).dispatch(
                          ChangeHoverTextColor(
                            onHoverValuesList: NavbarItemList.changeHoverColor(
                              0,
                              value,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          'Нүүр',
                          style: new TextStyle(
                            fontFamily: 'RobotoMono',
                            color: state.onHoverValuesList[0] == true
                                ? Colors.white
                                : Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    InkWell(
                      focusNode: NavbarItemList.introFocus,
                      focusColor: Color(0xff1278bd),
                      hoverColor: Color(0xff1278bd),
                      onTap: () {
                        StoreProvider.of<AppState>(context).dispatch(
                          ChangeContentAction(
                            page: IntroContent(),
                            changeFocusValues: NavbarItemList.changeFocus(1),
                          ),
                        );
                        NavbarItemList.focusNodeList[
                                NavbarItemList.getSelectedFocusNode()]
                            .unfocus();
                        FocusScope.of(context).requestFocus(
                          NavbarItemList.introFocus,
                        );
                      },
                      onHover: (value) {
                        StoreProvider.of<AppState>(context).dispatch(
                          ChangeHoverTextColor(
                            onHoverValuesList: NavbarItemList.changeHoverColor(
                              1,
                              value,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          'Танилцуулга',
                          style: TextStyle(
                            color: state.onHoverValuesList[1] == true
                                ? Colors.white
                                : Colors.black,
                            fontSize: 17,
                            fontFamily: 'RobotoMono',
                          ),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    InkWell(
                      focusNode: NavbarItemList.aboutFocus,
                      hoverColor: Color(0xff1278bd),
                      focusColor: Color(0xff1278bd),
                      onTap: () {
                        StoreProvider.of<AppState>(context).dispatch(
                          ChangeContentAction(
                            page: AboutContent(),
                            changeFocusValues: NavbarItemList.changeFocus(2),
                          ),
                        );
                        NavbarItemList.focusNodeList[
                                NavbarItemList.getSelectedFocusNode()]
                            .unfocus();
                        FocusScope.of(context).requestFocus(
                          NavbarItemList.aboutFocus,
                        );
                      },
                      onHover: (value) {
                        StoreProvider.of<AppState>(context).dispatch(
                          ChangeHoverTextColor(
                            onHoverValuesList: NavbarItemList.changeHoverColor(
                              2,
                              value,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(7),
                        child: Text(
                          'Бидний тухай',
                          style: TextStyle(
                            color: state.onHoverValuesList[2] == true
                                ? Colors.white
                                : Colors.black,
                            fontSize: 17,
                            fontFamily: 'RobotoMono',
                          ),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: state.popupWindow,
          body: state.page,
        ),
      ),
    );
  }
}
