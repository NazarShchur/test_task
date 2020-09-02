import 'package:flutter/cupertino.dart';

import '../constants.dart';

class MiddleText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MiddleTextState();
}

class _MiddleTextState extends State<MiddleText> {
  @override
  Widget build(BuildContext context) {
    return Text(Constants.middleText,
        style: TextStyle(
            color: Constants.middleTextColor,
            fontSize: Constants.middleTextSize
        ));
  }
}
