import 'package:flutter/material.dart';
import 'package:wildfire_calculator/WildfireCalculator.dart';
import 'futureBuilders.dart';

class RiskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
        child: Center(
          child: Column(
            children: [
              WildfireValue(),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange[800])),
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed('/explain', arguments: '');
                      },
                      child: Text('See how we do our Calculations')))
            ],
          ),
        ));
  }
}
