import 'dart:math';

class WildfireCalculator {
  static calculate(double temprature, double humidity) {
    var t = temprature;
    var h = humidity;

    //if temp or humidity is in invalid range return an error
    if (t < 1 || t > 134.1 || h < 0 || h > 100) {
      return -1;
    }

    //finds temprature regression
    var temperatureRegression =
        5.385604453 * (pow(10.0, -2)) * log(t) + 2.270723423 * (pow(10, -2));

    //adjust tempratureRegression to 0 - 10 scale
    temperatureRegression =
        (temperatureRegression - .0227) * (9.0) / (.286525 - .0227) + 1.0;

    //finds humidity regression
    var humidityRegression =
        -1.021342961 * pow(10.0, -1) * log(h) + 6.431237299 * pow(10.0, -1);

    //adjusts humidity regression to 1-10 scale
    humidityRegression =
        (humidityRegression - .2707) * (9.0) / (.6431 - .2707) + 1.0;

    //returns fire danger on a 1 - 10 scale
    return (temperatureRegression + humidityRegression) / 2;
  }
}
