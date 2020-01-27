import 'package:cryptowallet/appbars/appbar.dart';
import 'package:cryptowallet/components/lockscreen/lockkeypad.dart';
import 'package:cryptowallet/configs/colors.dart';
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
    return Scaffold(
      backgroundColor: darkblue,
      body: Container(
        child: Column(
          children: <Widget>[
            CustomAppBar(
              title: "Unlock",
              icon: FontAwesomeIcons.ellipsisV,
            ),
            Expanded(child: Container()),
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
