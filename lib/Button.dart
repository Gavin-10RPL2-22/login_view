import 'package:flutter/material.dart';

import 'package:login_view/Home.dart';

class Button extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Home()));
      },
    child: Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.5,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text("Sign in", style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),),
      ),
    ),
    );
  }
}