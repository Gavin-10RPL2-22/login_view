import 'package:flutter/material.dart';

import 'Button.dart';
import 'InputField.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(height: 30,),
          Container(
            child: InputFieldMain(),
          ),
          SizedBox(height: 100,),
          Button(),
        ],
      ),
    );
  }
}