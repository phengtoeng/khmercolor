import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/toyota_model.dart';

class ToyotaModelDashboard extends StatefulWidget {
  const ToyotaModelDashboard({Key? key}) : super(key: key);

  @override
  State<ToyotaModelDashboard> createState() => _ToyotaModelDashboardState();
}

class _ToyotaModelDashboardState extends State<ToyotaModelDashboard> {
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
        ToyotaModel(),
      ]),
    );
  }
}
