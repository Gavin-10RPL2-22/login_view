// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'Header.dart';

class Home extends StatelessWidget {
  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(
            "Data Master & Data Management", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
      Container(
        width: 200,
        height: 200,
        child: Image(
          image: AssetImage(
              "images/kievit_logo.png"),
        ),
      ),
          SizedBox(height: 25,),
          Expanded(
          child: ListView.builder(
              itemCount: titles.length,
              itemBuilder: (context, index) {
                return Card(
                    child: ListTile(
                        title: Text(titles[index]),
                        subtitle: Text(subtitles[index]),
                        leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                        trailing: Icon(icons[index])));
              }),
          ),
        ]
      ),
    );

  }
}