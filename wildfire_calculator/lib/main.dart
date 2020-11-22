import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:wildfire_calculator/GetLocation.dart';
import 'package:wildfire_calculator/preperation.dart';
import 'package:wildfire_calculator/prevention.dart';
import './weather.dart';
import './vegetation.dart';
import 'RiskPage.dart';
import './WildfireCalculator.dart';
import 'Route_Generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedPage = 1;

  final _pageOptions = [Prevention(), RiskPage(), Preperation()];

  final _pageTitles = [
    'Ways to Prevent a Wildfire',
    'Wildfire Risk in Your Area',
    'Ways to Prepare for a Wildfire'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.orange[800]),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(_pageTitles[selectedPage]),
          ),
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
