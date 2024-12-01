import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/landcruiser/landcruiser_1998_2007/landcruiser_1998_2007_Color_Pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/landcruiser/landcruiser_2008_2023/landcruiser_2008_2023_Color_Pick.dart';
import 'package:khmerautocolor/color/color.dart';


class LandCruiser extends StatefulWidget {
  const LandCruiser({Key? key}) : super(key: key);

  @override
  State<LandCruiser> createState() => _LandCruiserState();
}

class _LandCruiserState extends State<LandCruiser> {
  final style = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.normal,
    color: backgroundColor4,
  );

  @override
  Widget build(BuildContext context) {
    return makeDismissible(
      child: DraggableScrollableSheet(
        initialChildSize: 0.9,
        maxChildSize: 0.9,
        minChildSize: 0.8,
        builder: (BuildContext context, ScrollController scrollController) =>
            Container(
              decoration: const BoxDecoration(
                  color: backgroundColor4,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )),
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  Center(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xffb1afaf),
                        ),
                        margin: const EdgeInsets.only(bottom: 10),
                        height: 5,
                        width: 120,
                      )),
                  const Center(
                    child: Text(
                      "Toyota LandCruiser",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

                  //Starting Car list
                  //prius 2010-2015

                  Center(
                    child: yearPickCar(
                      imageParth: Image.asset('lib/images/toyota/landcruiser2022.png'),
                      height: 140,
                      width: 140,

                      navigationTo: const landcruiser_2008_2023_Color_Pick(),
                      yearText: "ឆ្នាំ 2008-2023",

                    ),
                  ) ,//2005-009

                        const SizedBox(
                          width: 10,
                        ),
                  Center(
                    child: yearPickCar(
                      imageParth: Image.asset('lib/images/toyota/landcruiser/landcruiser_2007_white.png'),
                      height: 140,
                      width: 140,

                      navigationTo: const landcruiser_1998_2007_Color_Pick(),
                      yearText: "ឆ្នាំ 1998-2007",
                    ),
                  ) ,//2005-009

                      ],
                    ),
                  ),
      ),
    );
  }

  Widget makeDismissible({required Widget child}) => GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () => Navigator.of(context).pop(),
    child: GestureDetector(
      onTap: () {},
      child: child,
    ),
  );
}

/// refactor all center

class yearPickCar extends StatelessWidget {
  final Image imageParth;
  final double height;
  final double width;
  final String yearText;
  final onPress;
  final navigationTo;

  const yearPickCar(
      {Key? key,
        required this.imageParth,
        required this.height,
        required this.width,
        required this.yearText,

        this.onPress, this.navigationTo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          SizedBox(
            child: imageParth,
            height: height,
            width: width,
          ),
          const SizedBox(
            width: 10,
          ),
          MaterialButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                )),
            elevation: 3.0,
            splashColor: Colors.pink,
            color: const Color(0xa3effffd),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    navigationTo),);
            },
            child: Text(yearText,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          ),
        ],
      ),
    );
  }
}

navigateToCar(BuildContext context, onPress, yearText) {
  return MaterialButton(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        )),
    elevation: 3.0,
    splashColor: Colors.pink,
    color: const Color(0xa3effffd),
    onPressed: () {

    },
    child: Text(yearText),
  );
}
