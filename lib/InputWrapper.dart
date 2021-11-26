import 'package:flutter/material.dart';

import 'Button.dart';
import 'InputField.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: InputFieldMain(),
          ),
          SizedBox(height: 25,),
          Button(),
        ],
      ),
    );
  }
}