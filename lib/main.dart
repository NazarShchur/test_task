import 'package:flutter/material.dart';
import 'package:test_task/color_changer/color_changer.dart';
import 'package:test_task/constants.dart';
import 'package:test_task/middle_text/middle_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name;

  @override
  void initState() {
    name = Constants.defaultUsername;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ColorChanger(
          middleWidget: MiddleText(name: name),
          setName: setName,
        ));
  }

  void setName(String name){
    setState(() {
      print(name);
      this.name = name;
    });
  }
}
