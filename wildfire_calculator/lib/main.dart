import 'package:flutter/material.dart';
import 'package:wildfire_calculator/GetLocation.dart';
import './RouteGenerator.dart';
import './weather.dart';
import './vegetation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.orange),
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
