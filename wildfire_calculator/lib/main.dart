import 'package:flutter/material.dart';
import 'package:wildfire_calculator/GetLocation.dart';
import './RouteGenerator.dart';
import './weather.dart';

void main() {
  runApp(MyApp());
  getWeatherData('temp').then((value) {
    print(value);
  });
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
