import 'package:cryptowallet/configs/colors.dart';
import 'package:flutter/material.dart';

class ListOption extends StatelessWidget {
  final double height;
  final double width;
  final String leading;
  final Widget trailing;
  final Function onPressed;
  ListOption(
      {this.height, this.width, this.leading, this.trailing, this.onPressed});
  @override
  Widget build(BuildContext context) {
    double fontSize(double size) {
      return size * width / 414;
    }

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.transparent,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: width / 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              leading,
              textAlign: TextAlign.left,
              style: TextStyle(color: white, fontSize: fontSize(25)),
            ),
            Container(alignment: Alignment.centerRight, child: trailing),
          ],
        ),
      ),
    );
  }
}
