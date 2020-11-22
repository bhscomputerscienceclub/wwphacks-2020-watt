import 'package:flutter/material.dart';

class Prevention extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Text('1. Report unattened fires'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text('2. Extuinguish fire pits and campfires when done'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text('3. Don\'t throw lit cigaretts out of your car'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text('4. Use caution when using flammable liquids'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text('5. Pay attention to local ordinances for trash burning'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: Text('6. Only use Fireworks in clear areas with no woods nearby'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text('7. Pay attention to the risk of forest fires in your area'),
          ),
        ],
      ),
    );
  }
}
