import 'package:flutter/material.dart';
import 'futureBuilders.dart';

class RiskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return Center(
        child: Column(
          children: [
            // TextBox(),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      );
=======
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
        child: Center(
          child: Column(
            children: [
              Text(
                '5',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 100),
              ),
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
>>>>>>> Stashed changes
  }
}
