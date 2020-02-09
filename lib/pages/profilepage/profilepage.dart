import 'package:cryptowallet/appbars/appbar.dart';
import 'package:cryptowallet/components/profilepage/listoption.dart';
import 'package:cryptowallet/components/profilepage/userprofile.dart';
import 'package:cryptowallet/configs/colors.dart';
import 'package:cryptowallet/configs/dimensions.dart';
import 'package:cryptowallet/configs/navigation.dart';
import 'package:cryptowallet/pages/profilepage/profilepagepages/selectcurrency.dart';
import 'package:cryptowallet/pages/profilepage/profilepagepages/userqr.dart';
import 'package:cryptowallet/pages/screenlock/screenlock.dart';
import 'package:cryptowallet/services/sharedprefrencesservices.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isDark = true;
  bool _lock = false;
  @override
  void initState() {
    super.initState();
    isAppLockEnabled().then((value) {
      print(value);
      if (value == null) {
        enableAppLock(false);
      } else {
        setState(() {
          _lock = value;
        });
      }
    });
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
              title: "Profile & Settings",
              icon: FontAwesomeIcons.qrcode,
              onPressed: () {
                navigate(context, UserQRPage());
              },
            ),
            Expanded(
              child: Container(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    UserProfile(
                      width: width,
                      height: height,
                      name: "Son Goku",
                      accountAddress: "bavaurwto74uygo4ggwo74g",
                      imageUrl:
                          "http://vignette4.wikia.nocookie.net/p__/images/1/1b/Goku_smiling_at_the_Dinosaur_Eggs.jpg/revision/latest?cb=20140801141235&path-prefix=protagonist",
                    ),
                    ListOption(
                      height: height,
                      width: width,
                      leading: "Dark Mode",
                      onPressed: () {
                        setState(() {
                          _isDark = !_isDark;
                        });
                      },
                      trailing: CupertinoSwitch(
                        value: _isDark,
                        onChanged: (bool value) {
                          setState(() {
                            _isDark = !_isDark;
                          });
                        },
                      ),
                    ),
                    Container(
                      height: .3,
                      color: white.withOpacity(.5),
                      margin: EdgeInsets.symmetric(horizontal: width / 15),
                    ),
                    ListOption(
                      height: height,
                      width: width,
                      leading: "Pin Code Lock",
                      onPressed: () {
                        navigate(context, ScreenLockPage());
                        setState(() {
                          _lock = !_lock;
                        });
                      },
                      trailing: CupertinoSwitch(
                        value: _lock,
                        onChanged: (bool value) {
                          setState(() {
                            _lock = !_lock;
                          });
                          enableAppLock(_lock);
                          // print(_lock);
                        },
                      ),
                    ),
                    Container(
                      height: .3,
                      color: white.withOpacity(.5),
                      margin: EdgeInsets.symmetric(horizontal: width / 15),
                    ),
                    ListOption(
                      height: height,
                      width: width,
                      leading: "Base Currency",
                      onPressed: () {
                        navigate(context, SelectCurrencyPage());
                      },
                      trailing: Row(
                        children: <Widget>[
                          Text(
                            'USD',
                            style: TextStyle(color: white.withOpacity(.7)),
                          ),
                          Icon(
                            FontAwesomeIcons.chevronRight,
                            color: white,
                            size: fontSize(20),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: .3,
                      color: white.withOpacity(.5),
                      margin: EdgeInsets.symmetric(horizontal: width / 15),
                    ),
                    ListOption(
                      height: height,
                      width: width,
                      leading: "About Us",
                      onPressed: () {},
                      trailing: Icon(
                        FontAwesomeIcons.chevronRight,
                        color: white,
                        size: fontSize(20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
