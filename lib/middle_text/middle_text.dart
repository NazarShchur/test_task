import 'package:flutter/cupertino.dart';

import '../constants.dart';

class MiddleText extends StatelessWidget {
  final String name;
  final String message = Constants.middleText;

  MiddleText({this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
        "$message, $name",
        style: TextStyle(
            color: Constants.middleTextColor,
            fontSize: Constants.middleTextSize
        ));
  }
}

