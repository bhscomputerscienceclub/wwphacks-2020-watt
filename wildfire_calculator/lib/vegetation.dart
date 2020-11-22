import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wildfire_calculator/GetLocation.dart';

Future<String> getFips() async {
  String _lat = 'lat=' + (await latitudeGetFuture());
  String _lon = '&lon=' + (await longitudeGetFuture());
  String _start = 'https://geo.fcc.gov/api/census/area?';
  String _end = '&format=json';
  print(_start + _lat + _lon + _end);
  var _response = await http.get(Uri.encodeFull(_start + _lat + _lon + _end),
      headers: {'accept': 'application/json'});
  var _data = (jsonDecode(_response.body));
  return _data['results'][0]['county_fips'];
}

Future<double> getVegetation() async {
  String _end = '&level=class';
  var _fips = await getFips();
  String _start =
      'https://api.sciencebase.gov/bis-api/api/v1/nvcs/summary?feature_id=US County:fips:';
  print(Uri.encodeFull(_start + _fips + _end));
  var _response = await http.get(Uri.encodeFull(_start + _fips + _end),
      headers: {'accept': 'application/json'});
  print(_response.body);
  var _data = (jsonDecode(_response.body));
  var _agriVeg =
      _data['hits']['hits'][1]['_source']['properties']['percent_area'];
  print(_agriVeg);
  var _shrubVeg =
      _data['hits']['hits'][3]['_source']['properties']['percent_area'];
  print(_shrubVeg);
  var _naturalVeg =
      _data['hits']['hits'][6]['_source']['properties']['percent_area'];
  print(_naturalVeg);
  var _forest =
      _data['hits']['hits'][7]['_source']['properties']['percent_area'];
  print(_forest);
  var _vasRockVeg =
      _data['hits']['hits'][9]['_source']['properties']['percent_area'];
  print(_vasRockVeg);
  var _opRockVeg =
      _data['hits']['hits'][10]['_source']['properties']['percent_area'];
  print(_opRockVeg);
  var totalVeg =
      _agriVeg + _shrubVeg + _naturalVeg + _forest + _vasRockVeg + _opRockVeg;
  print(totalVeg);
  return (totalVeg.toDouble());
}
