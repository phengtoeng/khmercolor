import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/nissan/nissan_model.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/ssangyong/ssangyong_model.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/tesla/tesla_model.dart';

class TeslaModeldashboard extends StatefulWidget {
  const TeslaModeldashboard({Key? key}) : super(key: key);

  @override
  State<TeslaModeldashboard> createState() => _TeslaModeldashboardState();
}

class _TeslaModeldashboardState extends State<TeslaModeldashboard> {
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
        TeslaModel(),
      ]),
    );
  }
}
