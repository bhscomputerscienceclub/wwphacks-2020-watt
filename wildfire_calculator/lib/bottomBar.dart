import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'RouteGenerator.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      items: [
        TabItem(icon: Icons.fire_extinguisher, title: 'Prevention'),
        TabItem(icon: Icons.warning_rounded, title: 'Home'),
        TabItem(icon: Icons.local_fire_department, title: 'Add'),
      ],
      cornerRadius: 10,
      style: TabStyle.fixed,
    );
  }
}
