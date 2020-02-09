import 'package:cryptowallet/appbars/appbar.dart';
import 'package:cryptowallet/configs/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkblue,
      body: Container(
        child: Column(children: <Widget>[
          CustomAppBar(
            title: "Activity",
          ),
        ]),
      ),
    );
  }
}
