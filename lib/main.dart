import 'package:flutter/material.dart';
import 'package:test_task/color_changer/color_changer.dart';
import 'package:test_task/middle_text/middle_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ColorChanger(
          middleWidget: MiddleText(),
        ));
  }
}
