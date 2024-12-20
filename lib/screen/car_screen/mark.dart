import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/hyundai/hyundai_model_dashboard.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/isuzu/isuzu_model_dashboard.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/kia/kia_model_dashboard.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/lexus/lexus_model_dashboard.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/mazda/mazda_model_dashboard.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/mg/mg_model_dashboard.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/nissan/nissan_model_dashboard.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/ssangyong/ssangyong_model_dashboard.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/toyota_model_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';

import 'car_mark/ford/ford_model_dashboard.dart';


class Mark extends StatefulWidget {
  const Mark({Key? key}) : super(key: key);

  @override
  State<Mark> createState() => _MarkState();
}

class _MarkState extends State<Mark> {
  @override
  Widget build(BuildContext context) {
    return
      SliverToBoxAdapter(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.1,
                    0.5,
                    0.6,
                    0.9,
                  ],
                  colors: [
                    backgroundColor,
                    backgroundColor,
                    backgroundColor,
                    backgroundColor,
                  ]
              )
          ),
          width: 400,
          height: 300,
          child: GridView.count(crossAxisCount: 3,
            scrollDirection: Axis.horizontal,
            children: [
             carMark(
               carDashboard: ToyotaModelDashboard(),
               imagePath: Image.asset('lib/images/toyota.png',fit: BoxFit.cover,),
             ),
              carMark(
                carDashboard: NissanModeldashboard(),
                imagePath: Image.asset('lib/images/nissan.png',fit: BoxFit.cover,),
              ),
              carMark(
                carDashboard: MazdaModeldashboard(),
                imagePath: Image.asset('lib/images/mazda.png',fit: BoxFit.cover,),
              ),
              carMark(
                carDashboard: FordModeldashboard(),
                imagePath: Image.asset('lib/images/ford.png',fit: BoxFit.cover,),
              ),
              carMark(
                carDashboard: LexusModelDashboard(),
                imagePath: Image.asset('lib/images/lexus.png',fit: BoxFit.cover,),
              ),
              carMark(
                carDashboard: ToyotaModelDashboard(),
                imagePath: Image.asset('lib/images/red_flag.png',fit: BoxFit.cover,),
              ),
              carMark(
                carDashboard: ToyotaModelDashboard(),
                imagePath: Image.asset('lib/images/lambogihni.png',fit: BoxFit.cover,),
              ),
              carMark(
                carDashboard: SsangYongModeldashboard(),
                imagePath: Image.asset('lib/images/SsangYong.png',fit: BoxFit.cover,),
              ),
              carMark(
                carDashboard: ToyotaModelDashboard(),
                imagePath: Image.asset('lib/images/porsche.png',fit: BoxFit.cover,),
              ),
              carMark(
                carDashboard: HyundaiModeldashboard(),
                imagePath: Image.asset('lib/images/hyundai.png',fit: BoxFit.cover,),
              ),
              carMark(
                carDashboard: KiaModeldashboard(),
                imagePath: Image.asset('lib/images/kia.png',fit: BoxFit.cover,),
              ),
              carMark(
                carDashboard: IsuzuModeldashboard(),
                imagePath: Image.asset('lib/images/isuzu.png',fit: BoxFit.cover,),
              ),
              carMark(
                carDashboard: MgModeldashboard(),
                imagePath: Image.asset('lib/images/mg.png',fit: BoxFit.cover,),
              ),



            ],),)

        ,);
  }
}

 class carMark extends StatelessWidget {

  // final Color splashColor;
  // final Color color;
  final Image imagePath;
  final carDashboard;

  const carMark({Key? key,
    // required this.splashColor,
    // required this.color,
    required this.imagePath, this.carDashboard})

      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.0,
      splashColor: Colors.pink,
      color: Colors.transparent,
      child: imagePath,
      onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) {
          return carDashboard;
        }));
      },
    );

  }
}


// incase error
//copy
// MaterialButton(
// elevation: 0.0,
// splashColor: Colors.pink,
// color: Colors.transparent,
// child: Image.asset('lib/images/toyota.png',fit: BoxFit.cover,),
// onPressed: () {
// Navigator.push(context,MaterialPageRoute(builder: (context)
// => const ToyotaModelDashboard()));
// },
// ),