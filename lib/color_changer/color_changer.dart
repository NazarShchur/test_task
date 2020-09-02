import 'package:flutter/material.dart';
import 'package:test_task/color_changer/random_color_generator.dart';

class ColorChanger extends StatefulWidget {
  final Widget middleWidget;

  ColorChanger({this.middleWidget});

  @override
  State<StatefulWidget> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {

  RandomColorGenerator randomColorGenerator;

  Color backgroundColor;

  @override
  void initState() {
    super.initState();
    randomColorGenerator = RandomColorGenerator();
    backgroundColor = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          backgroundColor = randomColorGenerator.generateRandomColor();
        });
      },
      child: Scaffold(
          backgroundColor: backgroundColor,
          body: Center(
            child: widget.middleWidget,
          )),
    );
  }
}
