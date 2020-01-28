import 'package:cryptowallet/buttons/button.dart';
import 'package:cryptowallet/configs/colors.dart';
import 'package:cryptowallet/configs/dimensions.dart';
import 'package:cryptowallet/configs/navigation.dart';
import 'package:cryptowallet/configs/strings.dart';
import 'package:cryptowallet/pages/dashboard.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = getheight(context);
    double width = getwidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Scaffold(
      backgroundColor: darkblue,
      body: SafeArea(
        child: Container(
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         colors: [darkblue, lightblue],
          //         begin: Alignment.topCenter,
          //         end: Alignment.bottomCenter)),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            appName,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: white,
                                fontFamily: "Afternoon",
                                fontSize: fontSize(60)),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: width / 15),
                          child: Text(
                            bodyText,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: white,
                                fontSize: fontSize(18),
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Button(
                              title: "Create Account",
                              onPressed: () {
                                navigate(context, DashboardPage());
                              },
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(top: height / 40),
                                padding: EdgeInsets.symmetric(
                                    horizontal: width / 15),
                                child: Text(
                                  "I have an account",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: white.withOpacity(.5),
                                      fontSize: fontSize(18),
                                      fontWeight: FontWeight.w100),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
