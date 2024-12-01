import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/Avalon/avalon_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/Tundra/Tundra_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/corolla/Corolla_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/highlander/highlander_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/prius/prius_year_Pick.dart';

const style = TextStyle(fontFamily: 'Teko', fontSize: 20);

class MgModel extends StatefulWidget {
  // const ToyotaModel({Key? key}) : super(key: key);
  @override
  State<MgModel> createState() => _MgModelState();
}

class _MgModelState extends State<MgModel> {
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
                text: "ERA",
                color: Colors.transparent,
                carModel: Prius(),
              ),// Prius
              ReusableCard(
                text: "HS/HS+EV",
                color: Colors.blue,
                carModel: Camry(),
              ),// Camry
            // Sienma
              ReusableCard(
                text: "ZST",
                color: Colors.blue,
                carModel: Corolla()
              ),// Corolla
              ReusableCard(
                text: "ZS/ZS+EV",
                color: Colors.blue,
                carModel: Avalon(),
              ),// Avalon
              ReusableCard(
                text: "MG3",
                color: Colors.blue,
                carModel: Tundra(),
              ),// Tundra
         // Highlander

              // Corolla-Hatch
              //ReusableCard(
              //                 text: "Corolla Hatch",
              //                 color: Colors.blue,
              //                 carModel: Camry(),
              //               ), ReusableCard(
              //   text: "Supra",
              //   color: Colors.blue,
              //   carModel: Camry(),
              // ),// Supra
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


