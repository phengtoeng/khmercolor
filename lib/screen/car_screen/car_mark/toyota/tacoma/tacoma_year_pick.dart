import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/corolla/Empty.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/tacoma/tacoma_2005_2015_color_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/tacoma/tacoma_2016_2021_color_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/tacoma/tacoma_2022_2024__color_pick.dart';

class Tacoma extends StatefulWidget {
  const Tacoma({Key? key}) : super(key: key);

  @override
  State<Tacoma> createState() => _TacomaState();
}

class _TacomaState extends State<Tacoma> {
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
                      "Toyota Tacoma",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

                  Center(
                    child: yearPickCar(
                      imageParth: Image.asset('lib/images/toyota/tacoma2014.png'),
                      height: 140,
                      width: 140,
                      navigationTo: Tacoma_2005_2014_Color_Pick(),
                      yearText: "ឆ្នាំ 2005-2014",

                    ),
                  ) ,
                  Center(
                    child: yearPickCar(
                      imageParth: Image.asset('lib/images/toyota/tacoma2016.png'),
                      height: 140,
                      width: 140,

                      navigationTo: Tacoma_2016_2021_Color_Pick(),
                      yearText: "ឆ្នាំ 2015-2021",

                    ),

                  ) ,
                  //prius 2016-2021
                  Center(
                    child: yearPickCar(
                      imageParth: Image.asset('lib/images/toyota/tacoma2022.png'),
                      height: 140,
                      width: 140,

                      navigationTo: Tacoma_2022_2024_Color_Pick(),
                      yearText: "ឆ្នាំ 2021-2024",

                    ),
                  ) ,
                  Center(
                    child: yearPickCar(
                      imageParth: Image.asset('lib/images/carcover.png',fit: BoxFit.cover,),
                      height: 140,
                      width: 140,

                      navigationTo: const Empty(),
                      yearText: "ឆ្នាំខាងមុខ",

                    ),
                  ) ,//prius 2016-2021
                  //For Add Later
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
