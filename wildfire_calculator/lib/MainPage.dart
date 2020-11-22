import 'package:flutter/material.dart';
import 'GetLocation.dart';
import 'tryingFutureBuilder.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() {
    return new _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  String str = "loading";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Text('str'),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ));
  }
}
