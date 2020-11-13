import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  var myFeedbackText = "TUYỆT VỜI";
  var sliderValue = 5.0;
  IconData myFeedback = FontAwesomeIcons.laugh;
  Color myFeedbackColor = Color(0xffff520d);

  // myFeedback = FontAwesomeIcons.laugh;
  // myFeedbackColor = Color(0xffff520d);
  // myFeedbackText = "TUYỆT VỜI";

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              print('arrow_back pressed');
            }),
        title: Text(
          "Đánh giá khách hàng vay",
          style: TextStyle(fontSize: 20.0),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.solidStar),
              onPressed: () {
                print('solidStar pressed');
              }),
        ],
      ),
      body: Container(
        color: Color(0xffE5E5E5),
        child: ListView(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    child: Text(
                      "Bạn thấy sao?",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              child: Align(
                child: Material(
                  color: Colors.white,
                  elevation: 20.0,
                  borderRadius: BorderRadius.circular(25.0),
                  shadowColor: Color(0x802196F3),
                  child: Container(
                      // width: 350.0,
                      // height: 400.0,
                    width: _media.width - 30,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                                child: Text(
                                  myFeedbackText,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                child: Icon(
                                  myFeedback,
                                  color: myFeedbackColor,
                                  size: 100.0,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Slider(
                                min: 0.0,
                                max: 5.0,
                                divisions: 10,
                                value: sliderValue,
                                // activeColor: Color(0xffff520d),
                                activeColor: Colors.blueAccent,
                                inactiveColor: Colors.blueGrey,
                                onChanged: (newValue) {
                                  setState(() {
                                    sliderValue = newValue;
                                    if (sliderValue >= 0.0 &&
                                        sliderValue <= 1.0) {
                                      myFeedback = FontAwesomeIcons.sadTear;
                                      myFeedbackColor = Colors.red;
                                      myFeedbackText = "CHƯA HÀI LÒNG";
                                    }
                                    if (sliderValue >= 1.1 &&
                                        sliderValue <= 2.0) {
                                      myFeedback = FontAwesomeIcons.frown;
                                      myFeedbackColor = Colors.yellow;
                                      myFeedbackText = "CẦN CỐ GẮNG";
                                    }
                                    if (sliderValue >= 2.1 &&
                                        sliderValue <= 3.0) {
                                      myFeedback = FontAwesomeIcons.meh;
                                      myFeedbackColor = Colors.amber;
                                      myFeedbackText = "BÌNH THƯỜNG";
                                    }
                                    if (sliderValue >= 3.1 &&
                                        sliderValue <= 4.0) {
                                      myFeedback = FontAwesomeIcons.smile;
                                      myFeedbackColor = Colors.green;
                                      myFeedbackText = "HÀI LÒNG";
                                    }
                                    if (sliderValue >= 4.1 &&
                                        sliderValue <= 5.0) {
                                      myFeedback = FontAwesomeIcons.laugh;
                                      myFeedbackColor = Color(0xffff520d);
                                      myFeedbackText = "TUYỆT VỜI";
                                    }
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                                child: Text(
                                  "Your Rating: $sliderValue",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        new BorderRadius.circular(30.0)),
                                    color: Color(0xffff520d),
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(color: Color(0xffffffff)),
                                    ),
                                    onPressed: () {},
                                  ),
                                )),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
