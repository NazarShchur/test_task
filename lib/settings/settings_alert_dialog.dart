import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SettingsAlertDialog extends StatelessWidget {
  final textController = TextEditingController();

  final Function setName;

  SettingsAlertDialog({this.setName});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(Constants.settingsTittle),
      content: Column(
        children: [
          TextField(
            controller: textController,
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
                ),
              child: Center(
                child: Text(Constants.CONFIRM),
              ),
              ),
            onTap: (){
              setName(textController.text);
            },
            ),
        ],
      ),
    );
  }

}