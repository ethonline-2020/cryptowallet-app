import 'package:cryptowallet/configs/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkblue,
      child: TabBar(
        tabs: [
          Tab(icon: Icon(FontAwesomeIcons.wallet)),
          Tab(
            icon: Icon(FontAwesomeIcons.chartLine),
          ),
          Tab(
            icon: Icon(FontAwesomeIcons.cog),
          )
        ],
        labelColor: lighterblue,
        unselectedLabelColor: lighterblue.withOpacity(.5),
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }
}
