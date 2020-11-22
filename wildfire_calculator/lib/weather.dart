import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wildfire_calculator/GetLocation.dart';

Future<String> getWeatherData(String string) async {
  String _lon = '&lon=' + (await longitudeGetFuture());
  String _lat = 'lat=' + (await latitudeGetFuture());
  String _key = '&appid=307072759790d30f7f1aff49b491b622&units=Imperial';
  String _start = 'https://api.openweathermap.org/data/2.5/weather?';
  print(Uri.encodeFull(_start + _lat + _lon + _key));
  var _response = await http.get(Uri.encodeFull(_start + _lat + _lon + _key),
      headers: {'accept': 'application/json'});
  var _data = (jsonDecode(_response.body));
  var _weatherMain = _data['weather'][0]['main']; //clouds
  var _weatherDescription =
      _data['weather'][0]['description']; //overcast clouds
  var _temp = _data['main']['temp']; // in celcius
  var _tempMin = _data['main']['temp_min']; // in celcius
  var _tempMax = _data['main']['temp_max']; // in celcius
  var _humidity = _data['main']['humidity']; //percent
  var _windSpeed = _data['wind']['speed']; //meters per sec
  var _pressure = _data['main']['pressure']; //meters per sec
  switch (string) {
    case 'weatherMain':
      return _weatherMain.toString();
    case 'weatherDescription':
      return _weatherDescription.toString();
    case 'temp':
      return _temp.toString();
    case 'tempMin':
      return _tempMin.toString();
    case 'tempMax':
      return _tempMax.toString();
    case 'humidity':
      return _humidity.toString();
    case 'windSpeed':
      return _windSpeed.toString();
    case 'pressure':
      return _pressure.toString();
    default:
      return 'incorrect type given';
  }
}
