import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/nissan/almera/almera_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/nissan/juke/juke_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/nissan/navara/navara_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/nissan/parthfinder/parthfinder_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/nissan/patrol/patrol_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/nissan/qashqai/qashqai_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/nissan/terra/terra_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/nissan/x-trail/Xtrail_year_Pick.dart';

const style = TextStyle(fontFamily: 'Teko', fontSize: 20);

class NissanModel extends StatefulWidget {
  // const ToyotaModel({Key? key}) : super(key: key);
  @override
  State<NissanModel> createState() => _NissanModelState();
}

class _NissanModelState extends State<NissanModel> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Expanded(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                0.1,
                0.1,
                0.1,
              ],
                  colors: [
                Color(0xffF7F7F7),
                Color(0xffB5EAEA),
                Color(0xffF4F9F9),
              ])),
          // width: 300,
          height: 1500,
          child: GridView.count(
            crossAxisCount: 3,
            scrollDirection: Axis.vertical,
            children: const [
              ReusableCard(
                text: "ALMERA",
                color: Colors.transparent,
                carModel: Almera(),
              ),// Prius
              ReusableCard(
                text: "JUKE",
                color: Colors.blue,
                carModel: Juke(),
              ),// Camry
            // Sienma
              ReusableCard(
                text: "NAVARA",
                color: Colors.blue,
                carModel: Navara()
              ),
              ReusableCard(
                  text: "PARTHFINDER",
                  color: Colors.blue,
                  carModel: Parthfinder()
              ),
              ReusableCard(
                  text: "PATROL",
                  color: Colors.blue,
                  carModel: Patrol()
              ),
              ReusableCard(
                  text: "QASHQAI",
                  color: Colors.blue,
                  carModel: Qashqai()
              ),
              ReusableCard(
                  text: "TERRA",
                  color: Colors.blue,
                  carModel: Terra()
              ),
              ReusableCard(
                  text: "X-TRAIL",
                  color: Colors.blue,
                  carModel: Xtrail()
              ),// Corolla

            ],
          ),
        ),
      ),
    );
  }
}

// ReusableCard
class ReusableCard extends StatelessWidget {

  final String text;
  final color;

  final carModel;
  const ReusableCard({
    Key? key,
    required this.text,
    this.color,
    required  this.carModel,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      splashColor: color,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        text,
        style: style,
      ),
      //child: Image.asset('lib/images/toyota.png',fit: BoxFit.cover,),
      onPressed: () {
        showSheet(context , carModel);
      },
    );
  }

showSheet(BuildContext context, carModel) {
     showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return carModel;
        },
    );
  }
}


