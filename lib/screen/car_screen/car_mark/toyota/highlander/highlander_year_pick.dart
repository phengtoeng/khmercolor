import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007_2011_color_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/highlander/highlander_2001_2007_color_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/highlander/highlander_2008-2013_color_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/highlander/highlander_2014_2023_color_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/prius/prius_2005_2009_color/prius_2005_2009_color_pick.dart';

class Highlander extends StatefulWidget {
  const Highlander({Key? key}) : super(key: key);

  @override
  State<Highlander> createState() => _HighlanderState();
}

class _HighlanderState extends State<Highlander> {
  final style = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.normal,
    color: Color(0xffff9900),
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
                  color: Color(0xfffaad3e),
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
                      "Toyota HighLander",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),


                  //Starting Car list
                  //prius 2010-2015

                  Center(
                    child: yearPickCar(
                      imageParth: Image.asset('lib/images/toyota/highlander/highlander_2001_2007_gold.png'),
                      height: 140,
                      width: 140,

                      navigationTo: Highlander_2001_2007_Color_Pick(),
                      yearText: "ឆ្នាំ 2001-2007",

                    ),
                  ) ,
                  Center(
                    child: yearPickCar(
                      imageParth: Image.asset('lib/images/toyota/highlander/highlander_2008_2013_white.png'),
                      height: 140,
                      width: 140,

                      navigationTo: Highlander_2008_2013_Color_Pick(),
                      yearText: "ឆ្នាំ 2008-2013",

                    ),
                  ) ,
                  Center(
                    child: yearPickCar(
                      imageParth: Image.asset('lib/images/toyota/highlander/highlander_2014_2023_Blizzard.png'),
                      height: 140,
                      width: 140,

                      navigationTo: const Highlander_2014_2023_Color_Pick(),
                      yearText: "ឆ្នាំ 2014-2023",

                    ),
                  ) ,
                  //For Add Later
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
