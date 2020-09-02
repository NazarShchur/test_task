import 'package:flutter/material.dart';
import 'package:test_task/color_changer/color_changer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorChanger(middleWidget: Text("test")),
    );
  }
}
