import 'package:flutter/material.dart';
import 'modules/BottomNavBar.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Varela",
      ),
      home: BottomNavBar(),
    );
  }
}



