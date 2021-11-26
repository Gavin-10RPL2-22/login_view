import 'package:flutter/material.dart';

import 'Header.dart';
import 'InputWrapper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          children: <Widget>[
            Header(),
            Expanded(child: Container(
              child: InputWrapper(),
            )),
          ],
        ),
      ),
      ),
    );
  }
}