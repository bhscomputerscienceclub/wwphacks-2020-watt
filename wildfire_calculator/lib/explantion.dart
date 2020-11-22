import 'package:flutter/material.dart';

class Explantion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explantion'),),
      body: Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0),child: Center(child: Text('Temperature, Humidity, Wind Speed, and Vegetation were all taken into account to make the Wildfire Calculation. The temperature, humidity, and wind speed were recorded from a farmer’s almanac from the three days before 75 random wildfires in California in 2019 and the day of the wildfires and labeled as x coordinates. If there was a wildfire that day, 1 is the paired y-value. If not, 0 is the paired y-value. Then, a linear regression tool was used to form the individual equations representative of the effects of temperature, humidity, and wind speed on the likelihood of a wildfire starting. For vegetation, the percent vegetation in 58 counties in California was compared to how many fires were reported there by CalFire in 2019. A linear regression tool was used to form an equation representative of the percent vegetation’s effects on the likelihood of a wildfire starting. All four equations were adjusted to a scale of 0-100, where the lowest possible value for each variable got a score of 0 and the greatest possible value for each variable got a score of 100. All four scores were then averaged together equally to get the final calculation.'),))
    );
  }
}
