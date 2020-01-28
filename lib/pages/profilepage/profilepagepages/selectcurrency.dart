import 'package:cryptowallet/appbars/appbar.dart';
import 'package:cryptowallet/configs/colors.dart';
import 'package:cryptowallet/configs/dimensions.dart';
import 'package:cryptowallet/configs/strings.dart';
import 'package:flutter/material.dart';

class SelectCurrencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = getheight(context);
    var width = getwidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Scaffold(
      backgroundColor: darkblue,
      body: Column(
        children: <Widget>[
          CustomAppBar(
            title: "Select Currency",
          ),
          Expanded(
            child: ListView.builder(
              itemCount: currency.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.transparent,
                    width: width,
                    padding: EdgeInsets.symmetric(
                      horizontal: width / 15,
                    ),
                    height: height / 10,
                    child: Text(
                      currency[index].toString().toUpperCase(),
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: white,
                        fontSize: fontSize(20),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
