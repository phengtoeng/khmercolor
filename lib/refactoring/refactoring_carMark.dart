import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';

class carMark extends StatelessWidget {
  final Image imagePath;
  final carDashboard;

  const carMark({Key? key, required this.imagePath, this.carDashboard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialButton(
      elevation: 0.0,
      splashColor: Colors.pink,
      color: Colors.transparent, // Adjusted to use dynamic color
      child: imagePath,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return carDashboard;
        }));
      },
    );
  }
}