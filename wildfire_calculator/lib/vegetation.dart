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

Future<Map> getVegetationData() async {
  String _end = '&level=class';
  var _fips = await getFips();
  String _start =
      'https://api.sciencebase.gov/bis-api/api/v1/nvcs/summary?feature_id=US County:fips:';
  print(Uri.encodeFull(_start + _fips + _end));
  var _response = await http.get(Uri.encodeFull(_start + _fips + _end),
      headers: {'accept': 'application/json'});
  print(_response.body);
  var _data = (jsonDecode(_response.body));
  return _data;
}

Future<double> getVegetation() async {
  var _data = await getVegetationData();
  var _y = 0;
  var _x;
  var _vegList = [];
  double vegTotal = 0;
  for (_x in _data['hits']['hits']) {
    if (_data['hits']['hits'][_y]['_source']['properties']['nvcs_name']
                .indexOf('Vegetation') !=
            -1 ||
        _data['hits']['hits'][_y]['_source']['properties']['nvcs_name']
                .indexOf('Forest') !=
            -1) {
      _vegList.add(
          _data['hits']['hits'][_y]['_source']['properties']['percent_area']);
    }
    _y++;
  }
  print(_vegList);
  for (int i = 0; i < _vegList.length; i++) {
    vegTotal += _vegList[i];
  }
  print(vegTotal);
  return vegTotal;
}
