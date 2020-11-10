import 'package:flutter/material.dart';
import '../extension/curved_navigation_bar-0.3.4/lib/curved_navigation_bar.dart';
import 'package:flutter_wallet_ui_challenge/src/pages/FramePage.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  Color iconColor = Colors.black;

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          // Icon(Icons.add, size: 30, color: iconColor),
          Icon(Icons.add,
              size: 30, color: _page == 0 ? Colors.red : Colors.black),
          Icon(Icons.list,
              size: 30, color: _page == 1 ? Colors.red : Colors.black),
          Icon(Icons.compare_arrows,
              size: 30, color: _page == 2 ? Colors.red : Colors.black),
          Icon(Icons.call_split,
              size: 30, color: _page == 3 ? Colors.red : Colors.black),
          Icon(Icons.perm_identity,
              size: 30, color: _page == 4 ? Colors.red : Colors.black),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
            // iconColor = Colors.red;
          });
        },
      ),
      body: FramePage(_page),
    );
  }
}
