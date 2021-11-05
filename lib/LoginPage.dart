import 'package:flutter/material.dart';

import 'Header.dart';
import 'InputWrapper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(height: 50,),
            Header(),
            SizedBox(height: 50,),
            Align(
              alignment: Alignment.centerLeft,
              child :Container(
                margin: new EdgeInsets.only(
                  left: 30.0,
                ),
                child: Text("Login to your account", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
              ),
            ),
            Expanded(child: Container(
              child: InputWrapper(),
            )),
          ],
        ),
      ),
    );
  }
}