import 'package:flutter/material.dart';
import 'futureBuilders.dart';

class Preperation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Text('1. If you live in high risk areas, make sure you always have an evacuation plan'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text('2. Follow Evacuation Orders'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text('3. Keep leaves and other debris raked in your yard'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Text('4. Make sure that flamable chemicals are in proper containers and stored safely'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Text('5. Never outrun a blaze - seek cover in lakes, rivers, or streams until it passes (You can even use a wat blanket if there is no water nearby)'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: Text('6. Use masks to protect your lungs'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Text('7. Always listen tou your local weather and news reports to make sure you are aware about the air quality, evacuation orders, and the status of fire nearby.'),
          ),
        ],
      ),
    );
  }
}
