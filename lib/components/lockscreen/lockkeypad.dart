import 'package:cryptowallet/components/lockscreen/lockbuttons.dart';
import 'package:cryptowallet/configs/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LockKeypad extends StatelessWidget {
  final ValueChanged onPressed;
  LockKeypad({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        onPressed("1");
                      },
                      child: LockButton(title: '1')),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onPressed("2");
                    },
                    child: LockButton(title: '2'),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onPressed("3");
                    },
                    child: LockButton(title: '3'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onPressed("4");
                    },
                    child: LockButton(title: '4'),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onPressed("5");
                    },
                    child: LockButton(title: '5'),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onPressed("6");
                    },
                    child: LockButton(title: '6'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onPressed("7");
                    },
                    child: LockButton(title: '7'),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onPressed("8");
                    },
                    child: LockButton(title: '8'),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onPressed("9");
                    },
                    child: LockButton(title: '9'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onPressed("0");
                    },
                    child: LockButton(title: '0'),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onPressed("back");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Icon(
                        FontAwesomeIcons.backspace,
                        color: white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
