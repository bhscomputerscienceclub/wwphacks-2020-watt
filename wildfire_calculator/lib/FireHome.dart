import 'package:flutter/material.dart';
import 'package:wildfire_calculator/weather.dart';
import 'GetLocation.dart';
import 'bottomBar.dart';
import 'futureBuilders.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() {
    return new _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  String str = "loading";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextBox(),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      bottomNavigationBar: BottomBar()
    );
  }
}
