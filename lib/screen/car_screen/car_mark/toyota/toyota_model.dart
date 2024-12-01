import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/Avalon/avalon_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/Rav4/Rav4_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/Tundra/Tundra_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/corolla/Corolla_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/highlander/highlander_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/landcruiser/LandCruiser_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/prius/prius_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/tacoma/tacoma_year_pick.dart';

const style = TextStyle(fontFamily: 'Teko', fontSize: 20);

class ToyotaModel extends StatefulWidget {
  // const ToyotaModel({Key? key}) : super(key: key);
  @override
  State<ToyotaModel> createState() => _ToyotaModelState();
}

class _ToyotaModelState extends State<ToyotaModel> {
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
                const Color(0xffF4F9F9),
              ])),
          // width: 300,
          height: 1500,
          child: GridView.count(
            crossAxisCount: 3,
            scrollDirection: Axis.vertical,
            children: const [
              ReusableCard(
                text: "Prius",
                color: Colors.transparent,
                carModel: Prius(),
              ),// Prius
              ReusableCard(
                text: "Camry",
                color: Colors.blue,
                carModel: Camry(),
              ),// Camry
            // Sienma
              ReusableCard(
                text: "Corolla",
                color: Colors.blue,
                carModel: Corolla()
              ),// Corolla
              ReusableCard(
                text: "Avalon",
                color: Colors.blue,
                carModel: Avalon(),
              ),// Avalon
              ReusableCard(
                text: "Tundra",
                color: Colors.blue,
                carModel: Tundra(),
              ),// Tundra
              ReusableCard(
                text: "Highlander",
                color: Colors.blue,
                carModel: Highlander(),
              ),// Highlander
              ReusableCard(
                text: "Rav4",
                color: Colors.blue,
                carModel: Rav4(),
              ),// Rav4
              ReusableCard(
                text: "C-HR",
                color: Colors.blue,
                carModel: Camry(),
              ),
              ReusableCard(
                text: "LandCruiser",
                color: Colors.blue,
                carModel: LandCruiser(),
              ),
              ReusableCard(
                text: "Tacoma",
                color: Colors.blue,
                carModel: Tacoma(),
              ), // C-HR

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


