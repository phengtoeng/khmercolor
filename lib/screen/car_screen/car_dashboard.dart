import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/mark.dart';
import 'package:khmerautocolor/screen/car_screen/popular_car_paint.dart';

import 'package:khmerautocolor/screen/car_screen/tittle_popular_car_paint.dart';
import 'package:khmerautocolor/color/color.dart';

class CarDashboard extends StatefulWidget {
  const CarDashboard({Key? key}) : super(key: key);

  @override
  State<CarDashboard> createState() => _CarDashboardState();
}

class _CarDashboardState extends State<CarDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: backgroundColor,
            toolbarHeight: 100,
            title: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text('ថ្នាំឡានលេក១',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                color: Color(0xff1F1D36)
              ),
                textAlign: TextAlign.center,),
            ),
            centerTitle: true,
            // leading: Padding(
            //   padding: EdgeInsets.only(top: 30.0),
            //   child: Icon(Icons.arrow_back,),
            // ),
          ),
          const Mark(),
        // SliverColor(),
         const TittlePopularColor(),
         const PopularCarPaint(),

         // SliverColor(),
         // TittlePopularColor(),
          //PopularCarPaint(),
          SliverGrid.extent(maxCrossAxisExtent: 200,
            mainAxisSpacing: 10.0,
            children: [
              Container(color: Colors.greenAccent,),
              Container(color:Colors.deepOrange),
              Container(color:Colors.pink),


            ],),
        ],


      ),);


  }
}
