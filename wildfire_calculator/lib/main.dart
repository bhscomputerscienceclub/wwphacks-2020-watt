import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:wildfire_calculator/GetLocation.dart';
import 'package:wildfire_calculator/prevention.dart';
import './weather.dart';
import './vegetation.dart';
import 'WildFireRiskPage.dart';

void main() {
  runApp(MyApp());
  getVegetation();
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
int selectedPage = 1;

    final _pageOptions = [
      Prevention(),
      WildFireRiskPage(),
    ];


  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.orange[800]),
        ),
        home: Scaffold(
          appBar: AppBar(),
          body: _pageOptions[selectedPage],
          bottomNavigationBar: ConvexAppBar(
            backgroundColor: Colors.orange[800],
            items: [
              TabItem(icon: Icons.fire_extinguisher, title: 'Prevention'),
              TabItem(icon: Icons.warning_rounded, title: 'Wildfire Risk'),
              TabItem(icon: Icons.local_fire_department, title: 'Preperation'),
            ],
            initialActiveIndex: 1,
            style: TabStyle.titled,
            onTap: (int i) {
              setState(() {
                selectedPage = i;
                print(i);
              });
            },
          ),
        ));
  }
}
