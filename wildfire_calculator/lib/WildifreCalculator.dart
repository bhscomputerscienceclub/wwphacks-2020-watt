import 'dart:math';

class WildfireCalculator {
  static calculate(double temprature, double humidity, double windSpeed, double vegetation) {
    var t = temperature;
    var h = humidity;
    var w = windSpeed;
    var v = vegetation;

    //if temp or humidity is in invalid range return invalid imput message
    if (t < -70 || t > 130 || h < 0 || h > 100 || w<0 || w>231) {
      var fireDanger = "invalid input";
    }

    //finds temperature regression
    var temperatureRegression =
        0.00093*t + 0.18557;
    var oldMaxT = .30647;
    var oldMinT = .12047;
    var newMaxT = 100;
    var newMinT = 0;
 //adjust temperature Regression to 0 - 100 scale
             temperatureRegression = 
             (((temperatureRegression - 0ldMinT) * (newMaxT - newMinT)) / (0ldMaxT - 0ldMinT)) + newMinT;

   

    //finds humidity regression
    var humidityRegression =
        -.00217*h + .35989;
    var oldMaxH = .14289;
    var oldMinH = .35989;
    var newMaxH = 100;
    var newMinH = 0;

    //adjusts humidity regression to 1-100 scale
    humidityRegression =
        (((humidityRegression - 0ldMinH) * (newMaxH - newMinH)) / (0ldMaxH - 0ldMinH)) + newMinH;



    //finds windSpeed regression
    var windSpeedRegression =
      .01332*w + 0.17724;
    var oldMaxW = 3.25416;
    var oldMinW = .17724;
    var newMaxW = 100;
    var newMinW = 0;

    //adjust windSpeed Regression to 0 - 100 scale
    windSpeedRegression =
        (((windSpeedRegression - 0ldMinW) * (newMaxW - newMinW)) / (0ldMaxW - 0ldMinW)) + newMinW;


 //finds vegetation regression
    var vegetationRegression =
      .00005*v-.00006;
    var oldMaxV = .00494;
    var oldMinV = -.00006;
    var newMaxV = 100;
    var newMinV = 0;

    //adjust vegetation Regression to 0 - 100 scale
   vegetationRegression =
        (((vegetationRegression - 0ldMinV) * (newMaxV - newMinV)) / (0ldMaxV - 0ldMinV)) + newMinV;


    //returns fire danger on a 0 - 100 integer scale
    fireDanger = (int)((temperatureRegression + humidityRegression + windSpeedRegression + vegetationRegression) / 4);
  }
}
