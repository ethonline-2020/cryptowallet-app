import 'package:cryptowallet/appbars/appbar.dart';
import 'package:cryptowallet/configs/colors.dart';
import 'package:cryptowallet/configs/dimensions.dart';
import 'package:cryptowallet/configs/navigation.dart';
import 'package:cryptowallet/configs/strings.dart';
import 'package:cryptowallet/pages/profilepage/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height = getheight(context);
    double width = getwidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        color: darkblue,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: SafeArea(
                child: Container(
                  height: height / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border:
                                          Border.all(width: 1, color: white)),
                                  child: Text(
                                    "Send",
                                    style: TextStyle(
                                        color: white,
                                        fontSize: fontSize(20),
                                        fontWeight: FontWeight.w100),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(6)),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border:
                                          Border.all(width: 1, color: white)),
                                  child: Text(
                                    "Recieve",
                                    style: TextStyle(
                                        color: white,
                                        fontSize: fontSize(20),
                                        fontWeight: FontWeight.w100),
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
            ),
            SingleChildScrollView(
              child: Container(
                  margin: EdgeInsets.only(top: height / 2.5),
                  decoration: BoxDecoration(
                      color: lightblue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(width / 10),
                          topRight: Radius.circular(width / 10))),
                  child: ListView(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 15, vertical: height / 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Transactions",
                              style: TextStyle(
                                  color: white, fontSize: fontSize(25)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                FontAwesomeIcons.chevronDown,
                                color: white,
                                size: fontSize(15),
                              ),
                            )
                          ],
                        ),
                      ),
                      ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: transactionLogs.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: height / 7,
                            padding:
                                EdgeInsets.symmetric(horizontal: width / 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(transactionLogs[index]['title'],
                                        style: TextStyle(
                                            color: white,
                                            fontSize: fontSize(18))),
                                    Text(transactionLogs[index]['subtitle'],
                                        style: TextStyle(
                                            color: white,
                                            fontSize: fontSize(18)))
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(transactionLogs[index]['amount'],
                                        style: TextStyle(
                                            color: transactionLogs[index]
                                                        ['amount']
                                                    .contains("-")
                                                ? neonred
                                                : neongreen,
                                            fontSize: fontSize(18))),
                                    Text(transactionLogs[index]['timestamp'],
                                        style: TextStyle(
                                            color: white,
                                            fontSize: fontSize(18)))
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  )),
            ),
            CustomAppBar(
              title: "CryptoWallet",
              icon: FontAwesomeIcons.userAlt,
              onPressed: () {
                navigate(context, ProfilePage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
