import 'package:flutter/material.dart';
import 'MainPage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (BuildContext context) => MainPage());
    }
  }
}
