import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/lexus/ls/is_2010_2023_color_pick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/corolla/Empty.dart';
class Is extends StatefulWidget {
  const Is({Key? key}) : super(key: key);

  @override
  State<Is> createState() => _IsState();
}

class _IsState extends State<Is> {
  final style = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.normal,
    color: Color(0xffff7300),
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
                      "Lexus IS",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: yearPickCar(
                      imageParth: Image.asset('lib/images/lexus/is.png'),
                      height: 140,
                      width: 140,

                      navigationTo: Is_2010_2023_color_pick(),
                      yearText: "ឆ្នាំ 2010-2023",

                    ),
                  ) ,
                  // Center(
                  //   child: yearPickCar(
                  //     imageParth: Image.asset('lib/images/avalon.png'),
                  //     height: 140,
                  //     width: 140,
                  //
                  //     navigationTo: Avalon_2013_2024_Color_Pick(),
                  //     yearText: "ឆ្នាំ 2013-2024",
                  //
                  //   ),
                  // ) ,
                  // Center(
                  //   child: yearPickCar(
                  //     imageParth: Image.asset(
                  //       'lib/images/carcover.png',
                  //       fit: BoxFit.cover,
                  //     ),
                  //     height: 130,
                  //     width: 130,
                  //     navigationTo: const Empty(),
                  //     yearText: "ឆ្នាំខាងមុខ",
                  //   ),
                  // ),
                  // Center(
                  //   child: yearPickCar(
                  //     imageParth: Image.asset(
                  //       'lib/images/carcover.png',
                  //       fit: BoxFit.cover,
                  //     ),
                  //     height: 130,
                  //     width: 130,
                  //     navigationTo: const Empty(),
                  //     yearText: "ឆ្នាំខាងមុខ",
                  //   ),
                  // ),
                  Center(
                    child: yearPickCar(
                      imageParth: Image.asset(
                        'lib/images/carcover.png',
                        fit: BoxFit.cover,
                      ),
                      height: 130,
                      width: 130,
                      navigationTo: const Empty(),
                      yearText: "ឆ្នាំខាងមុខ",
                    ),
                  ),
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
