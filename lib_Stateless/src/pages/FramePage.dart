import 'package:flutter/material.dart';

//-------------------------page package-----------------------------------------
import 'package:flutter_wallet_ui_challenge/src/pages/Home/HomePage.dart';
import 'package:flutter_wallet_ui_challenge/src/pages/Overview/OverviewPage.dart';

//---------------------------module packag--------------------------------------
import '../modules/BottomBar.dart';

//---------------------------other package--------------------------------------
class FramePage extends StatelessWidget {
  String _pageName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyFrame(
        context,
      ),
      bottomNavigationBar: bottomNavigationBarFrame(context),
    );
  }

  Widget bodyFrame(BuildContext context) {
    if (_pageName == 'home') {
      HomePage homePage = new HomePage();
      return homePage.bodyHome(context);
    } else {
      OverviewPage overviewPage = new OverviewPage();
      return overviewPage.bodyOverviewPage(context);
    }
  }

  Widget bottomNavigationBarFrame(BuildContext context) {
    BottomBar _bottombar = BottomBar();
    return _bottombar.bottomBarInit();
  }
}
