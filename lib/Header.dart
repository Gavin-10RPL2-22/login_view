import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
            width: 200,
            height: 200,
            child: Image(
              image: AssetImage(
                "images/kievit_logo.png"),
            ),
          );
  }
}