import 'package:cryptowallet/configs/colors.dart';
import 'package:cryptowallet/configs/dimensions.dart';
import 'package:flutter/material.dart';

class LockButton extends StatelessWidget {
  final String title;
  LockButton({this.title});
  @override
  Widget build(BuildContext context) {
    double width = getwidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Container(
      color: Colors.transparent,
      alignment: Alignment.center,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: white, fontWeight: FontWeight.w700, fontSize: fontSize(25)),
      ),
    );
  }
}
