import 'package:flutter/material.dart';
import 'package:flutter_sample/animations/circular_list/circular_list_page.dart';
import 'package:flutter_sample/animations/custom_appbar/my_custom_appbar_page.dart';
import 'package:flutter_sample/animations/foldable_animation.dart';
import 'package:flutter_sample/animations/list_details/list_page.dart';
import 'package:flutter_sample/main.dart';

class MainAnimations extends StatefulWidget {
  @override
  MainAnimationsState createState() {
    return new MainAnimationsState();
  }
}

class MainAnimationsState extends State<MainAnimations> {
  onButtonTap(Widget page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Animations"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            MyMenuButton(
              title: "Foldable Page",
              actionTap: () {
                onButtonTap(FoldablePage());
              },
            ),
            MyMenuButton(
              title: "List - Detail Page",
              actionTap: () {
                onButtonTap(ListPage());
              },
            ),
            MyMenuButton(
              title: "Circular List Page",
              actionTap: () {
                onButtonTap(CircularListPage());
              },
            ),
             MyMenuButton(
              title: "My Custom AppBar Page",
              actionTap: () {
                onButtonTap(MyCustomAppBarPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
