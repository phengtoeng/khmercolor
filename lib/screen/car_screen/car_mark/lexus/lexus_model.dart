import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/lexus/es/es_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/lexus/ls/is_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/lexus/lx/lx_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/lexus/nx/Nx_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/Avalon/avalon_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/Tundra/Tundra_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/highlander/highlander_year_pick.dart';

const style = TextStyle(fontFamily: 'Teko', fontSize: 20);

class LexusModel extends StatefulWidget {
  // const ToyotaModel({Key? key}) : super(key: key);
  @override
  State<LexusModel> createState() => _LexusModelState();
}

class _LexusModelState extends State<LexusModel> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Expanded(
        child: Container(
          decoration: const BoxDecoration(
              color: backgroundColor),
          // width: 300,
          height: 1500,
          child: GridView.count(
            crossAxisCount: 3,
            scrollDirection: Axis.vertical,
            children: const [
              ReusableCard(
                text: "ES",
                color: Colors.transparent,
                carModel: Es(),
              ),// Prius
              ReusableCard(
                text: "IS",
                color: Colors.blue,
                carModel: Is(),
              ),// Camry
            // Sienma
              ReusableCard(
                text: "LX",
                color: Colors.blue,
                carModel: Lx()
              ),// Corolla
              ReusableCard(
                text: "NX",
                color: Colors.blue,
                carModel: Nx(),
              ),// Avalon
              ReusableCard(
                text: "RX",
                color: Colors.blue,
                carModel: Tundra(),
              ),// Tundra
              ReusableCard(
                text: "UX",
                color: Colors.blue,
                carModel: Highlander(),
              ),// Highlander

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


