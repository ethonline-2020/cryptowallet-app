import 'package:cryptowallet/appbars/appbar.dart';
import 'package:cryptowallet/components/lockscreen/lockkeypad.dart';
import 'package:cryptowallet/configs/colors.dart';
import 'package:cryptowallet/configs/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenLockPage extends StatefulWidget {
  @override
  _ScreenLockPageState createState() => _ScreenLockPageState();
}

class _ScreenLockPageState extends State<ScreenLockPage> {
  onKeyPressed(value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    double height = getheight(context);
    double width = getwidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Scaffold(
      backgroundColor: darkblue,
      body: Container(
        child: Column(
          children: <Widget>[
            CustomAppBar(
              title: "Unlock",
              icon: FontAwesomeIcons.ellipsisV,
            ),
            Expanded(
                child: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Icon(
                        FontAwesomeIcons.lock,
                        color: white,
                        size: fontSize(35),
                      ),
                    ),
                  ),
                  Container(
                    height: height / 7,
                    // color: black,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Enter Pin Code",
                          style:
                              TextStyle(color: white, fontSize: fontSize(18)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
            Expanded(
                child: LockKeypad(
              onPressed: onKeyPressed,
            ))
          ],
        ),
      ),
    );
  }
}
