import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task/middle_text/middle_text_model.dart';

import '../constants.dart';

class SettingsAlertDialog extends StatelessWidget {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MiddleTextModel>(context);
    return AlertDialog(
      title: Text(Constants.settingsTittle),
      content: Column(
        children: [
          TextField(
            maxLength: Constants.maxUsernameLength,
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
             model.setUsername(textController.text);
            },
            ),
        ],
      ),
    );
  }

}