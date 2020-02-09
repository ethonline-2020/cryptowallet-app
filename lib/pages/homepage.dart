import 'package:cryptowallet/components/homepagecomponents/tabbar.dart';
import 'package:cryptowallet/pages/activitypage/activitypage.dart';
import 'package:cryptowallet/pages/dashboard.dart';
import 'package:cryptowallet/pages/profilepage/profilepage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: CustomTabBar(),
        body: TabBarView(
          // physics: NeverScrollableScrollPhysics(),
          children: <Widget>[DashboardPage(), ActivityPage(), ProfilePage()],
        ),
      ),
    );
  }
}
