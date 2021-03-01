import 'package:flutter/material.dart';

class GetuserText extends StatelessWidget {
  final _textFieldController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 400,
      height: 50,
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.only(
          bottomLeft: Radius.circular(17.0),
          bottomRight: Radius.circular(17.0),
        ),
        color: Colors.pink,
      ),
      // Input text
      child: TextFormField(
        autocorrect: false,
        controller: _textFieldController,
        style: TextStyle(fontSize: 16),
        decoration: new InputDecoration(
          isDense: true,
          hintText: "Type text",
          hintStyle: TextStyle(color: Colors.white),
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.only(
            left: 20,
            right: 10,
            top: 15,
            bottom: 15,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(17.0),
              bottomRight: Radius.circular(17.0),
            ),
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.send_sharp),
            onPressed: () {},
          ),
        ),
        minLines: 1,
      ),
    );
  }
}
