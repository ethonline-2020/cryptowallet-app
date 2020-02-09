import 'package:cryptowallet/configs/colors.dart';
import 'package:cryptowallet/configs/dimensions.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onPressed;
  CustomAppBar({this.title, this.onPressed, this.icon});
  @override
  Widget build(BuildContext context) {
    var height = getheight(context);
    var width = getwidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Container(
      height: height / 9,
      color: lightblue,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: white,
                    fontSize: fontSize(25),
                    fontWeight: FontWeight.w700),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  alignment: Alignment.centerRight,
                  onPressed: onPressed,
                  icon: Icon(
                    icon,
                    color: white,
                    size: fontSize(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
