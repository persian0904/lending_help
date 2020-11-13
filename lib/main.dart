import 'package:flutter/material.dart';
// import 'src/app.dart';
import 'src/pages/loginPage/ui/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lending ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // home: IntroPageWithMotion(),
      home: new LoginPage(),
    );
  }
}