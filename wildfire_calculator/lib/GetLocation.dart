import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

Future<String> longitudeGetFuture() async {
  bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();

  if (!isLocationServiceEnabled) {
    return 'No location Given';
  }

  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

  print(position);

  return position.longitude.toString();
}

Future<String> latitudeGetFuture() async {
  bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();

  if (!isLocationServiceEnabled) {
    return 'No location Given';
  }

  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);


  return position.latitude.toString();
}

/* class TextBox extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
      future: getLocaion(),
      initialData: "Loading text..",
      builder: (BuildContext context, AsyncSnapshot<String> text) {
        return Text(
            var stuff = text.data,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19.0,
            ),
          );
      });
  }
} */
