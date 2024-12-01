import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/ford/everest/everest_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/ford/explorer/explorer_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/ford/f150/f150_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/ford/ford_ranger/ford_ranger_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/ford/mustang/mustang_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/ford/ranger_xls/ranger_xls_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/ford/territory/territory_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/ford/transit/transit_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_year_pick.dart';


const style = TextStyle(fontFamily: 'Teko', fontSize: 20);

class FordModel extends StatefulWidget {
  // const ToyotaModel({Key? key}) : super(key: key);
  @override
  State<FordModel> createState() => _FordModelState();
}

class _FordModelState extends State<FordModel> {
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
                text: "Mustang",
                color: Colors.transparent,
                carModel: Mustang(),
              ),// Prius
              ReusableCard(
                text: "Territory",
                color: Colors.blue,
                carModel: Territory()
              ),// Corolla
              ReusableCard(
                text: "Everest",
                color: Colors.blue,
                carModel: Everest(),
              ),// Avalon
              ReusableCard(
                text: "Explorer",
                color: Colors.blue,
                carModel: Explorer(),
              ),// Tundra
              ReusableCard(
                text: "Ranger XLS",
                color: Colors.blue,
                carModel: Ranger_Xls(),
              ),// Highlander
              ReusableCard(
                text: "Ford Ranger",
                color: Colors.blue,
                carModel: Ford_Ranger(),
              ),// Rav4
              ReusableCard(
                text: "Ranger Raptor",
                color: Colors.blue,
                carModel: Camry(),
              ),
              ReusableCard(
                text: "F-150/F150Raptor",
                color: Colors.blue,
                carModel: F150(),
              ),

              ReusableCard(
                text: "Transit",
                color: Colors.blue,
                carModel: Transit(),
              ),// C-HR
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


