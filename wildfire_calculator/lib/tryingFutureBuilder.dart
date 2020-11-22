/* import 'package:flutter/material.dart';
import 'package:wildfire_calculator/getLocation.dart';

class TextBox extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
      future: getLocaion(),
      initialData: "Loading text..",
      builder: (BuildContext context, AsyncSnapshot<String> text) {
        return Text(
            text.data,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19.0,
            ),
          );
      });
  }
} */