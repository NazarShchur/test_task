import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task/app_bar/settings_button.dart';
import 'package:test_task/constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  final Function setName;

  const MyAppBar({this.setName});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("test_task"),
      actions: [
        SettingsButton(
          setName: setName,
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, Constants.appBarHeight);

}