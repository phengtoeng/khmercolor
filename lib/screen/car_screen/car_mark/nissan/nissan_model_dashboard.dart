import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/nissan/nissan_model.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/ssangyong/ssangyong_model.dart';

class NissanModeldashboard extends StatefulWidget {
  const NissanModeldashboard({Key? key}) : super(key: key);

  @override
  State<NissanModeldashboard> createState() => _NissanModeldashboardState();
}

class _NissanModeldashboardState extends State<NissanModeldashboard> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(slivers: [
        const SliverAppBar(
          backgroundColor: Color(0xfffd5d5d),
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
        NissanModel(),
      ]),
    );
  }
}
