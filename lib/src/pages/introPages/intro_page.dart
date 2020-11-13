import 'package:avatar_glow/avatar_glow.dart';
import 'delay_animation.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  //this is a time for a logo that can show up and fade.
  final int delayedAmount = 1000;
  // After the logo is faded, content will be showed up.
  final int contentDelay = 1000 + 1500;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 200),
        lowerBound: 0.0,
        upperBound: 0.1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF8185E2),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  _buildAvatarGlow(),
                  DelayAnimation(
                    delay: delayedAmount,
                    shouldFaded: true,
                    child: Text(
                      "Hi There",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  DelayAnimation(
                    delay: contentDelay,
                    child: Text(
                      "I'm Reflectly",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  DelayAnimation(
                    delay: contentDelay + 300,
                    child: Text(
                      "Your New Personal",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  DelayAnimation(
                    delay: contentDelay + 300,
                    child: Text(
                      "Journaling  companion",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  DelayAnimation(
                    delay: contentDelay + 1000,
                    child: GestureDetector(
                      child: Container(
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Hi Reflectly',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF8185E2),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  DelayAnimation(
                    delay: contentDelay + 1300,
                    child: Text(
                      "I Already have An Account".toUpperCase(),
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  AvatarGlow _buildAvatarGlow() {
    return AvatarGlow(
      endRadius: 90,
      duration: Duration(seconds: 2),
      glowColor: Colors.white24,
      repeat: true,
      repeatPauseDuration: Duration(seconds: 2),
      startDelay: Duration(seconds: 1),
      child: Material(
          elevation: 8.0,
          shape: CircleBorder(),
          child: CircleAvatar(
            backgroundColor: Colors.grey[100],
            child: FlutterLogo(
              size: 50.0,
            ),
            radius: 50.0,
          )),
    );
  }
}
