import 'package:cryptowallet/configs/colors.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final double height;
  final double width;
  final String name;
  final String imageUrl;
  final String accountAddress;
  UserProfile(
      {this.height, this.width, this.accountAddress, this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    double fontSize(double size) {
      return size * width / 414;
    }

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: width / 2.5,
            width: width / 2.5,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(imageUrl), fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height / 70),
            child: Text(
              name,
              style: TextStyle(
                  color: white,
                  fontSize: fontSize(30),
                  fontWeight: FontWeight.w700),
            ),
          ),
          Text(
            accountAddress,
            style: TextStyle(
              color: white.withOpacity(.7),
              fontSize: fontSize(20),
            ),
          ),
        ],
      ),
    );
  }
}
