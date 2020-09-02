import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("test_task"),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 57.0);

}