import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorGenerator {

  Color generateRandomColor() {
    return Color.fromRGBO(
        _generateRandomColorValue(),
        _generateRandomColorValue(),
        _generateRandomColorValue(), 1.0);
  }

  int _generateRandomColorValue() => Random().nextInt(256);
}