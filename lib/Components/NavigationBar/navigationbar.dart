import 'package:flutter/material.dart';

class Navigationbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return new DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return new DesktopNavbar();
        } else {
          return new MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          new Text("Site Logo"),
          new Row(
            children: [
              new Text("Home"),
              new SizedBox(
                width: 30,
              ),
              new Text("introduction"),
              new SizedBox(
                width: 30,
              ),
              new Text("Our team"),
              new SizedBox(
                width: 30,
              ),
              new Text("Contact"),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.pink,
      child: new Column(
        children: [
          new Text("Site name"),
          new Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text("Home"),
                new SizedBox(
                  width: 30,
                ),
                new Text("introduction"),
                new SizedBox(
                  width: 30,
                ),
                new Text("Our team"),
                new SizedBox(
                  width: 30,
                ),
                new Text("Contact"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
