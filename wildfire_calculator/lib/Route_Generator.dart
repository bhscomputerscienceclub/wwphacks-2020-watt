import 'package:flutter/material.dart';
import 'package:wildfire_calculator/explantion.dart';
import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (BuildContext context) => MyApp());
      case '/explain':
        if (args is String) {
          return MaterialPageRoute(
              builder: (BuildContext context) => Explantion());
        }
    }
  }
}
