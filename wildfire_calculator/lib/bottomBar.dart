import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: <Widget>[
        Icon(Icons.fire_extinguisher),
        Icon(Icons.warning_rounded),
        Icon(Icons.local_fire_department),
      ],
      onTap: (index) {
        print(index);
      },
    );
  }
}
