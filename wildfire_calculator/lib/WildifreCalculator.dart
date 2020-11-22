import 'dart:math';

class WildfireCalculator {
  static calculate(double temprature, double humidity, double windSpeed, double vegetation) {
    var t = temperature;
    var h = humidity;
    var w = windSpeed;
    var v = vegetation;

    //if temp or humidity is in invalid range return an error
    if (t < 1 || t > 134.1 || h < 0 || h > 100) {
      return -1;
    }

    //finds temprature regression
    var temperatureRegression =
        .0351+.0509*(Math.log(t));

    //adjust temprature Regression to 0 - 10 scale
    temperatureRegression =
        (temperatureRegression - .0227) * (9.0) / (.286525 - .0227) + 1.0;

    //finds humidity regression
    var humidityRegression =
        0.6715+0.1095(Math.log(h));

    //adjusts humidity regression to 1-10 scale
    humidityRegression =
        (humidityRegression - .2707) * (9.0) / (.6431 - .2707) + 1.0;


    //finds windSpeed regression
    var windSpeedRegression =
        .2103+.0253*(Math.log(t));

    //adjust windSpeed Regression to 0 - 10 scale
    windSpeedRegression =
        (windSpeedRegression - .0227) * (9.0) / (.286525 - .0227) + 1.0;


    //returns fire danger on a 1 - 10 scale
    return (temperatureRegression + humidityRegression) / 2;
  }
}
