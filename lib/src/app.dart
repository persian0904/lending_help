import 'package:flutter/material.dart';
import 'package:flutter_wallet_ui_challenge/config/theme.dart';
import 'modules/BottomNavBar.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Varela",
      ),
      // theme: DefaultTheme.of(context),
      home: BottomNavBar(),
    );
  }
}



