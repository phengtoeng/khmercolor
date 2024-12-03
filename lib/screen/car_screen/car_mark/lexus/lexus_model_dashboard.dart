import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Ford/ford_model.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/lexus/lexus_model.dart';

class LexusModelDashboard extends StatefulWidget {
  const LexusModelDashboard({Key? key}) : super(key: key);

  @override
  State<LexusModelDashboard> createState() => _LexusModelDashboardState();
}

class _LexusModelDashboardState extends State<LexusModelDashboard> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(slivers: [
        const SliverAppBar(
          backgroundColor: backgroundColor,
          toolbarHeight: 100,
          title: Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Text(
              'ថ្នាំឡានលេក១',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          centerTitle: true,
          // leading: Padding(
          //   padding: EdgeInsets.only(top: 30.0),
          //   child: Icon(Icons.arrow_back,),
          // ),
        ),
        LexusModel(),
      ]),
    );
  }
}
