import 'package:cryptowallet/appbars/appbar.dart';
import 'package:cryptowallet/components/profilepage/listoption.dart';
import 'package:cryptowallet/components/profilepage/userprofile.dart';
import 'package:cryptowallet/configs/colors.dart';
import 'package:cryptowallet/configs/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isDark = true;

  @override
  Widget build(BuildContext context) {
    double height = getheight(context);
    double width = getwidth(context);
    return Scaffold(
      backgroundColor: darkblue,
      body: Container(
        child: Column(
          children: <Widget>[
            CustomAppBar(
              title: "Profile & Settings",
              icon: FontAwesomeIcons.qrcode,
              onPressed: () {},
            ),
            Expanded(
              child: Container(
                child: ListView(
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
                        print("hello");
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
                    )
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
