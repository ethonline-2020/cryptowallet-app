import 'package:cryptowallet/appbars/appbar.dart';
import 'package:cryptowallet/configs/colors.dart';
import 'package:cryptowallet/configs/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class UserQRPage extends StatefulWidget {
  @override
  _UserQRPageState createState() => _UserQRPageState();
}

class _UserQRPageState extends State<UserQRPage> {
  @override
  Widget build(BuildContext context) {
    double height = getheight(context);
    double width = getwidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Scaffold(
        backgroundColor: darkblue,
        body: Column(
          children: <Widget>[
            CustomAppBar(
              title: "Username",
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: width / 20, horizontal: width / 20),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(width / 30)),
                      child: QrImage(
                        data: "1234567890",
                        version: QrVersions.auto,
                        foregroundColor: black,
                        size: 200.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: width / 30, horizontal: width / 30),
                        decoration: BoxDecoration(
                            color: white.withOpacity(.2),
                            borderRadius: BorderRadius.circular(width / 30)),
                        child: Text(
                          "asciacu4bfwuv5oyvbwuvb3493bv",
                          style: TextStyle(
                            color: white,
                            fontSize: fontSize(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ))
          ],
        ));
  }
}
