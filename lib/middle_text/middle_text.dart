import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import 'middle_text_model.dart';

class MiddleText extends StatelessWidget {
  final String name;
  final String message = Constants.middleText;

  MiddleText({this.name});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MiddleTextModel>(context);
    return Text(
        "$message, " + model.username,
        style: TextStyle(
            color: Constants.middleTextColor,
            fontSize: Constants.middleTextSize
        ));
  }
}

