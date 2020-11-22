import 'package:flutter/material.dart';
import 'FireHome.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (BuildContext context) => MainPage());
      case '0':
        return MaterialPageRoute(builder: (BuildContext context) => MainPage());
    }
  }
}
