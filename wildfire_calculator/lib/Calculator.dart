import 'dart:math';

class WildfireCalculator {
  static calculate(double temprature, double humidity, double windSpeed, double vegetation) {
    var t = temperature;
    var h = humidity;
    var w = windSpeed;
    var v = vegetation;

    //if temp or humidity is in invalid range return an error
    if (t < -70 || t > 130 || h < 0 || h > 100 || w<0 || w>231) {
      return "invalid input";
    }

    //finds temprature regression
    var temperatureRegression =
        0.00093*t + 0.18557;
    var oldMaxT = .30647;
    var oldMinT = .12047;
    var newMaxT = 10;
    var newMinT = 0;
 //adjust temprature Regression to 0 - 10 scale
             temperatureRegression = 
             (((temperatureRegression - 0ldMinT) * (newMaxT - newMinT)) / (0ldMaxT - 0ldMinT)) + newMinT;

   

    //finds humidity regression
    var humidityRegression =
        -.00217*h + .35989;
    var oldMaxH = .14289;
    var oldMinH = .35989;
    var newMaxH = 10;
    var newMinH = 0;

    //adjusts humidity regression to 1-10 scale
    humidityRegression =
        (((humidityRegression - 0ldMinH) * (newMaxH - newMinH)) / (0ldMaxH - 0ldMinH)) + newMinH;



    //finds windSpeed regression
    var windSpeedRegression =
      .01332*w + 0.17724;
    var oldMaxW = 3.25416;
    var oldMinW = .17724;
    var newMaxW = 10;
    var newMinW = 0;

    //adjust windSpeed Regression to 0 - 10 scale
    windSpeedRegression =
        (((windSpeedRegression - 0ldMinW) * (newMaxW - newMinW)) / (0ldMaxW - 0ldMinW)) + newMinW;


    //returns fire danger on a 1 - 10 scale
    return ((temperatureRegression + humidityRegression + windSpeed) / 3).toString();
  }
}
