import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task/color_changer/color_changer.dart';
import 'package:test_task/constants.dart';
import 'package:test_task/middle_text/middle_text.dart';

import 'middle_text/middle_text_model.dart';

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
    return ChangeNotifierProvider.value(
        value: MiddleTextModel(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ColorChanger(
            middleWidget: MiddleText(name: name),
          ),
        ));
  }
}
