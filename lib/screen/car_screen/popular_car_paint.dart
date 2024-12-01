import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/Tundra/Tundra_2014_2023_color_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007_2011_color_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/highlander/highlander_2001_2007_color_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/prius/prius_2010_2015_color/prius_2010_2015_color_pick.dart';
import 'package:khmerautocolor/color/color.dart';
import '../../refactoring/refactoring.dart';
import 'car_mark/toyota/landcruiser/landcruiser_2008_2023/landcruiser_2008_2023_Color_Pick.dart';
import 'car_mark/toyota/prius/prius_2005_2009_color/prius_2005_2009_color_pick.dart';


class PopularCarPaint extends StatefulWidget {
  const PopularCarPaint({Key? key}) : super(key: key);

  @override
  State<PopularCarPaint> createState() => _PopularCarPaintState();
}

class _PopularCarPaintState extends State<PopularCarPaint> {
  @override
  Widget build(BuildContext context) {
    return
      SliverToBoxAdapter(
        child: Container(
          color: backgroundColor,
          width: 400,
          height: 300,
          child: GridView.count(crossAxisCount: 2,
            scrollDirection: Axis.horizontal,
            children: [
              PopularCar1(
                  popularcarDashboard: prius_color_05_09_color_pick(),
                  imagePath: Image.asset('lib/images/toyota/prius/prius05_09.png',fit: BoxFit.cover,
                  )),
              PopularCar1(
                  popularcarDashboard: prius_color_10_15_color_pick(),
                  imagePath: Image.asset('lib/images/toyota/prius/prius_10_15.png',fit: BoxFit.cover,
                  )),
              PopularCar1(
                  popularcarDashboard: Tundra_2014_2023_Color_Pick(),
                  imagePath: Image.asset('lib/images/tacoma05_15.png',fit: BoxFit.cover,
                  )),
              PopularCar1(
                  popularcarDashboard: camry_2007_2011_color_pick(),
                  imagePath: Image.asset('lib/images/camry07_11.png',fit: BoxFit.cover,
                  )),
              PopularCar1(
                  popularcarDashboard: landcruiser_2008_2023_Color_Pick(),
                  imagePath: Image.asset('lib/images/lexus_gx.png',fit: BoxFit.cover,
                  )),
              PopularCar1(
                  popularcarDashboard: Highlander_2001_2007_Color_Pick(),
                  imagePath: Image.asset('lib/images/highlander.png',fit: BoxFit.cover,
                  )),
              PopularCar1(
                  popularcarDashboard: Highlander_2001_2007_Color_Pick(),
                  imagePath: Image.asset('lib/images/lambogihni.png',fit: BoxFit.cover,
                  )),
              PopularCar1(
                  popularcarDashboard: Highlander_2001_2007_Color_Pick(),
                  imagePath: Image.asset('lib/images/SsangYong.png',fit: BoxFit.cover,
                  )),
              PopularCar1(
                  popularcarDashboard: Highlander_2001_2007_Color_Pick(),
                  imagePath: Image.asset('lib/images/porsche.png',fit: BoxFit.cover,
                  )),
              PopularCar1(
                  popularcarDashboard: Highlander_2001_2007_Color_Pick(),
                  imagePath: Image.asset('lib/images/land_rover.png',fit: BoxFit.cover,
                  )),
              PopularCar1(
                  popularcarDashboard: Highlander_2001_2007_Color_Pick(),
                  imagePath: Image.asset('lib/images/kia.png',fit: BoxFit.cover,
                  )),
              PopularCar1(
                   popularcarDashboard: Highlander_2001_2007_Color_Pick(),
                    imagePath: Image.asset('lib/images/cadilac.png',fit: BoxFit.cover,)),

            ],),)

        ,);
  }
}



// MaterialButton(
//   elevation: 0.0,
//   splashColor: Colors.pink,
//   color: Colors.transparent,
//   onPressed: () {  Navigator.push(context,MaterialPageRoute(builder: (context)
//   =>const prius_color_05_09_color_pick())); },
//   child: Image.asset('lib/images/toyota/prius/prius05_09.png',fit: BoxFit.cover,),
// ),

