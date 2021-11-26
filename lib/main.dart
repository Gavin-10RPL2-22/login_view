import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_view/IntroScreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]
    );
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}