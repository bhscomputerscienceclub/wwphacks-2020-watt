import 'dart:math';
import 'weather.dart';
import 'vegetation.dart';

Future<String> Calculate() async {
  var te = await getWeatherData('temp');
  var hu = await getWeatherData('humidity');
  var wi = await getWeatherData('windSpeed');
  var ve = await getVegetation();
  var t = double.parse(te);
  var h = double.parse(hu);
  var w = double.parse(wi);
  var v = double.parse(ve);
  //if temp or humidity is in invalid range return invalid imput message
  if (t < -70 || t > 130 || h < 0 || h > 100 || w < 0 || w > 231) {
    var fireDanger = "invalid input";
  }

  //finds temperature regression
  var temperatureRegression = 0.00093 * t + 0.18557;
  var oldMaxT = .30647;
  var oldMinT = .12047;
  var newMaxT = 100;
  var newMinT = 0;
  //adjust temperature Regression to 0 - 100 scale
  temperatureRegression =
      (((temperatureRegression - oldMinT) * (newMaxT - newMinT)) /
              (oldMaxT - oldMinT)) +
          newMinT;

  //finds humidity regression
  var humidityRegression = -.00217 * h + .35989;
  var oldMaxH = .14289;
  var oldMinH = .35989;
  var newMaxH = 100;
  var newMinH = 0;

  //adjusts humidity regression to 1-100 scale
  humidityRegression = (((humidityRegression - oldMinH) * (newMaxH - newMinH)) /
          (oldMaxH - oldMinH)) +
      newMinH;

  //finds windSpeed regression
  var windSpeedRegression = .01332 * w + 0.17724;
  var oldMaxW = 3.25416;
  var oldMinW = .17724;
  var newMaxW = 100;
  var newMinW = 0;

  //adjust windSpeed Regression to 0 - 100 scale
  windSpeedRegression =
      (((windSpeedRegression - oldMinW) * (newMaxW - newMinW)) /
              (oldMaxW - oldMinW)) +
          newMinW;

  //finds vegetation regression
  var vegetationRegression = .00005 * v - .00006;
  var oldMaxV = .00494;
  var oldMinV = -.00006;
  var newMaxV = 100;
  var newMinV = 0;

  //adjust vegetation Regression to 0 - 100 scale
  vegetationRegression =
      (((vegetationRegression - oldMinV) * (newMaxV - newMinV)) /
              (oldMaxV - oldMinV)) +
          newMinV;

  //returns fire danger on a 0 - 100 integer scale
  return (((temperatureRegression +
              humidityRegression +
              windSpeedRegression +
              vegetationRegression) ~/
          4)
      .toString());
}
