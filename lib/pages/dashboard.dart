import 'package:barcode_scan/barcode_scan.dart';
import 'package:cryptowallet/appbars/appbar.dart';
import 'package:cryptowallet/configs/colors.dart';
import 'package:cryptowallet/configs/dimensions.dart';
import 'package:cryptowallet/configs/navigation.dart';
import 'package:cryptowallet/configs/strings.dart';
import 'package:cryptowallet/pages/profilepage/profilepage.dart';
import 'package:cryptowallet/pages/profilepage/profilepagepages/userqr.dart';
import 'package:cryptowallet/pages/send/sendmoney.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/services.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _outputController = TextEditingController();
  String barcode = "";

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
          'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = getheight(context);
    double width = getwidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Container(
      color: darkblue,
      child: Column(
        children: <Widget>[
          CustomAppBar(
            title: "CryptoWallet",
            icon: FontAwesomeIcons.userAlt,
            onPressed: () {
              navigate(context, ProfilePage());
            },
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: lightblue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: height / 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "\$5,610.00",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: white,
                              fontSize: fontSize(40),
                              fontWeight: FontWeight.w700),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                scan();
                                // navigate(context, SendMoneyPage());
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 1, color: white)),
                                child: Text(
                                  "Send",
                                  style: TextStyle(
                                      color: white,
                                      fontSize: fontSize(20),
                                      fontWeight: FontWeight.w100),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(6)),
                            GestureDetector(
                              onTap: () {
                                navigate(context, UserQRPage());
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 1, color: white)),
                                child: Text(
                                  "Recieve",
                                  style: TextStyle(
                                      color: white,
                                      fontSize: fontSize(20),
                                      fontWeight: FontWeight.w100),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(),
          )
        ],
      ),
    );
  }
}
