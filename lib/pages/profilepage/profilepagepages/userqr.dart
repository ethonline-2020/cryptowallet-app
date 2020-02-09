import 'package:cryptowallet/appbars/appbar.dart';
import 'package:cryptowallet/buttons/button.dart';
import 'package:cryptowallet/configs/colors.dart';
import 'package:cryptowallet/configs/dimensions.dart';
import 'package:cryptowallet/configs/navigation.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screenshot/screenshot.dart';
import 'package:social_share/social_share.dart';

class UserQRPage extends StatefulWidget {
  @override
  _UserQRPageState createState() => _UserQRPageState();
}

class _UserQRPageState extends State<UserQRPage> {
  ScreenshotController _screenshotController = ScreenshotController();
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
                      child: Screenshot(
                        controller: _screenshotController,
                        child: QrImage(
                          data: "1234567890",
                          version: QrVersions.auto,
                          foregroundColor: black,
                          size: 200.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Button(
                        title: "Share",
                        onPressed: () {
                          _screenshotController.capture().then((image) {
                            SocialShare.shareOptions("", imagePath: image.path);
                          });
                        },
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
