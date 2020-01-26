import 'package:flutter/material.dart';

navigate(BuildContext context, Widget child) {
  Navigator.of(context).push(MaterialPageRoute(builder: (_) => child));
}

navigateReplace(BuildContext context, Widget child) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => child));
}

navigatePop(BuildContext context) {
  Navigator.of(context).pop();
}
