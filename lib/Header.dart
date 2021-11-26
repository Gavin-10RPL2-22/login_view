import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(
        left: 75.0,
      ),
            width: 200,
            height: 200,
            child: Image(
              image: AssetImage(
                "images/kievit_logo.png"),
            ),
          );
  }
}