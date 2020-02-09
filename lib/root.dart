import 'package:cryptowallet/pages/homepage.dart';
import 'package:cryptowallet/pages/screenlock/screenlock.dart';
import 'package:cryptowallet/services/sharedprefrencesservices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  theme() {
    FlutterStatusbarcolor.setNavigationBarWhiteForeground(true);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
  }

  bool _isLock;
  checkisLock() async {
    await isAppLockEnabled().then((value) {
      setState(() {
        print(value);
        _isLock = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    checkisLock();
  }

  @override
  Widget build(BuildContext context) {
    theme();
    switch (_isLock) {
      case true:
        return ScreenLockPage();
        break;
      case false:
        return HomePage();
        break;
      default:
        return HomePage();
        break;
    }
  }
}
