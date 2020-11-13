import 'package:flutter/material.dart';

//-------------------------page package-----------------------------------------
import 'package:flutter_wallet_ui_challenge/src/pages/Home/HomePage.dart';
import 'package:flutter_wallet_ui_challenge/src/pages/Overview/OverviewPage.dart';
import 'package:flutter_wallet_ui_challenge/src/pages/LendingRequest/register_loan.dart';
import 'package:flutter_wallet_ui_challenge/src/pages/Test/Test.dart';

//---------------------------other package--------------------------------------
int pageIndex = -1;

class FramePage extends StatefulWidget {
  FramePage(int Index) {
    pageIndex = Index;
  }
  @override
  _FramePageState createState() => _FramePageState();
}

class _FramePageState extends State<FramePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyFrame(context),
    );
  }

  Widget bodyFrame(BuildContext context) {
    if (pageIndex == -1) {
      HomePage homePage = new HomePage();
      return homePage.bodyHome(context);
    }

    if (pageIndex == 0) {
      HomePage homePage = new HomePage();
      return homePage.bodyHome(context);
    }
    if (pageIndex == 1) {
      OverviewPage overviewPage = new OverviewPage();
      return overviewPage.bodyOverviewPage(context);
    }
    if (pageIndex == 2) {
      RegisterLoanScreen registerLoanScreen = new RegisterLoanScreen();
      return registerLoanScreen;
    }

    TestPage test = new TestPage();
    return test;
  }
}
