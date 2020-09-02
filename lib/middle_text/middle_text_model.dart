import 'package:flutter/cupertino.dart';
import 'package:test_task/constants.dart';

class MiddleTextModel extends ChangeNotifier{
  String username = Constants.defaultUsername;

  void setUsername(String username){
    this.username = username;
    notifyListeners();
  }
}