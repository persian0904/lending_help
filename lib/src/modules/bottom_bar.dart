import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomBar {
  CurvedNavigationBar bottomBarInit() {
    return CurvedNavigationBar(
      backgroundColor: Colors.redAccent,
      items: <Widget>[
        Icon(Icons.add, size: 25),
        Icon(Icons.list, size: 25),
        Icon(Icons.compare_arrows, size: 25),
      ],
      onTap: (index) {
        //Handle button tap
      },
    );
  }
}
