import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/Avalon/avalon_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/Tundra/Tundra_year_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/corolla/Corolla_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/highlander/highlander_year_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/prius/prius_year_Pick.dart';

const style = TextStyle(fontFamily: 'Teko', fontSize: 20);

class SsangyongModel extends StatefulWidget {
  // const ToyotaModel({Key? key}) : super(key: key);
  @override
  State<SsangyongModel> createState() => _TeslaModelState();
}

class _TeslaModelState extends State<SsangyongModel> {
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
                text: "Musso",
                color: Colors.transparent,
                carModel: Prius(),
              ),// Prius
              ReusableCard(
                text: "Rexton",
                color: Colors.blue,
                carModel: Camry(),
              ),// Camry
            // Sienma
              ReusableCard(
                text: "Tivoli",
                color: Colors.blue,
                carModel: Corolla()
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


