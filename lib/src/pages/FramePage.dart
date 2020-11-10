import 'package:flutter/material.dart';
//-------------------------page package-----------------------------------------
import 'package:flutter_wallet_ui_challenge/src/pages/Home/HomePage.dart';
import 'package:flutter_wallet_ui_challenge/src/pages/Overview/OverviewPage.dart';
import 'package:flutter_wallet_ui_challenge/src/pages/Feedback/FeedbackPage.dart';
//---------------------------other package--------------------------------------
class FramePage extends StatelessWidget {
  String _pageName = 'home';
  int pageIndex = -1;
  FramePage(int pageIndex){
    this.pageIndex = pageIndex;
  }
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
    if(pageIndex == 2){
      FeedbackPage feedbackPage = new FeedbackPage();
      return feedbackPage;
    }
  }

}
