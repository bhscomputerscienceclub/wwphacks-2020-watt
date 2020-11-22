import 'package:flutter/material.dart';
import 'package:wildfire_calculator/getLocation.dart';
import 'package:wildfire_calculator/weather.dart';
import './vegetation.dart';
import 'WildfireCalculator.dart';

class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
        future: getWeatherData('temp'),
        initialData: "Loading text..",
        builder: (BuildContext context, AsyncSnapshot<String> text) {
          return Text(
            text.data ?? 'Please Reload App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19.0,
            ),
          );
        });
  }
}

class Tester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
        future: getVegetation(),
        initialData: "Loading text..",
        builder: (BuildContext context, AsyncSnapshot<String> text) {
          return Text(
            text.data ?? 'Please Reload App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19.0,
            ),
          );
        });
  }
}

class WildfireValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
        future: Calculate(),
        initialData: "Calculating",
        builder: (BuildContext context, AsyncSnapshot<String> text) {
          return Text(text.data ?? 'Please Reload App',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 100));
        });
  }
}
