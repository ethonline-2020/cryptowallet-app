import 'package:cryptowallet/configs/colors.dart';
import 'package:cryptowallet/configs/dimensions.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Function onPressed;
  Button({this.title, this.onPressed});
  @override
  Widget build(BuildContext context) {
    double height = getheight(context);
    double width = getwidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: lighterblue, borderRadius: BorderRadius.circular(20)),
        padding:
            EdgeInsets.symmetric(vertical: width / 30, horizontal: width / 10),
        child: Text(
          title,
          style: TextStyle(
              color: white,
              fontSize: fontSize(15),
              fontWeight: FontWeight.w100),
        ),
      ),
    );
  }
}
