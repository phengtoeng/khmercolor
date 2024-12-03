import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/hyundai/country/country_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/hyundai/h100/h100_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/hyundai/h350/h350_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/hyundai/hd36L/hd36l_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/hyundai/venue/venue_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/Avalon/avalon_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/Tundra/Tundra_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/corolla/Corolla_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/highlander/highlander_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/prius/prius_year_Pick.dart';

const style = TextStyle(fontFamily: 'Teko', fontSize: 20);

class HyundaiModel extends StatefulWidget {
  // const ToyotaModel({Key? key}) : super(key: key);
  @override
  State<HyundaiModel> createState() => _HyundaiModelState();
}

class _HyundaiModelState extends State<HyundaiModel> {
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
                text: "country",
                color: Colors.transparent,
                carModel: Country(),
              ),
              ReusableCard(
                text: "venue",
                color: Colors.blue,
                carModel: Venue(),
              ),// Prius
              ReusableCard(
                text: "h100",
                color: Colors.blue,
                carModel: H100(),
              ),// Camry
            // Sienma
              ReusableCard(
                text: "h350",
                color: Colors.blue,
                carModel: H350()
              ),// Corolla
              ReusableCard(
                text: "hd36l",
                color: Colors.blue,
                carModel: HD36L(),
              ),// Avalon
              ReusableCard(
                text: "hd45/65/72/78",
                color: Colors.blue,
                carModel: Tundra(),
              ),// Tundra
              ReusableCard(
                text: "hd120/210",
                color: Colors.blue,
                carModel: Highlander(),
              ),
              ReusableCard(
                text: "palisade",
                color: Colors.blue,
                carModel: Highlander(),
              ),
              ReusableCard(
                text: "santa_fe",
                color: Colors.blue,
                carModel: Highlander(),
              ),
              ReusableCard(
                text: "staria",
                color: Colors.blue,
                carModel: Highlander(),
              ),
              ReusableCard(
                text: "tuscon",
                color: Colors.blue,
                carModel: Highlander(),
              ),
              ReusableCard(
                text: "universe",
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


