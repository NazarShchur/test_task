import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task/settings/settings_alert_dialog.dart';

class SettingsButton extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.settings),
      onPressed: (){
        showDialog(
            context: context,
            builder: (context){
              return SettingsAlertDialog();
            }
        );
      }
    );
  }

}