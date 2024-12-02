import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/040.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/062.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/070.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/1C0.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/1D6.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/1F7.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/color_code_all.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/202.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/3R3.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/4R3.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/4R4.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/4T3.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/4T8.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/586.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/6T3.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8N6.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8R3.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8S6.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8V5.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8X7.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_black.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_blue.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_gold_sand.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_gray.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_red.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_silver.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_skyblue.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_white.dart';

import '../../Color_Code/copy_color_code.dart';

class Rav4_2013_2023_Color_Pick extends StatefulWidget {
  const Rav4_2013_2023_Color_Pick({Key? key}) : super(key: key);

  @override
  State<Rav4_2013_2023_Color_Pick> createState() {
    return _Rav4_2013_2023_Color_PickState();
  }
}
class _Rav4_2013_2023_Color_PickState
    extends State<Rav4_2013_2023_Color_Pick> {
  String title = 'BottomNavigationBar';

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            alignment: AlignmentDirectional.topStart,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 60, 0, 0),
                  child: Icon(Icons.arrow_back,size: 34,),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Toyota Rav4",
                  textAlign: TextAlign.center,),
                ),
              ],
            ),
          color: Colors.redAccent,),
         // makeDismissible(
          makeDismissible(
            child: DraggableScrollableSheet(
                initialChildSize: 0.85,
                maxChildSize: 0.85,
                minChildSize: 0.5,
                builder:
                    (BuildContext context, ScrollController scrollController) =>
                        Container(
                          decoration: const BoxDecoration(
                              color: Color(0xffe7d397),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              )),
                          padding: const EdgeInsets.all(20),
                          child: ListView(
                            controller: scrollController,
                            scrollDirection: Axis.vertical,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      color: Color(0xff585757),
                                    ),
                                    margin: const EdgeInsets.only(bottom: 10),
                                    height: 5,
                                    width: 120,

                                  ),
                                ],
                              ),

                              const Center(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: Text(
                                    "Toyota Camry | 2005-2014",
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0, top: 10),
                                child: Center(
                                    child: Text(
                                  "ជ្រើសរើសពណ៌រថយន្ត..",
                                  style: TextStyle(
                                      fontSize: 26, fontWeight: FontWeight.bold),
                                )),
                              ), //prius 2005-2009 (Color White)

                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Code_202()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/202.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 202',style: const TextStyle(fontSize: 20,),)
                                ],
                              ),
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const Code_3R3()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/3R3.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 3R3',style: const TextStyle(fontSize: 20,),)
                                ],
                              ),
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const CarColorCode(googlePageId: '1G3')));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/1G3.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 1G3',style: const TextStyle(fontSize: 20,),)
                                ],
                              ),
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const Code_070()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/070.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 070',style: const TextStyle(fontSize: 20,),)
                                ],
                              ),
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const Code_1F7()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/1F7.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 1F7',style: const TextStyle(fontSize: 20,),)
                                ],
                              ),
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const Code_4T3()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/4T3.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 4T3',style: const TextStyle(fontSize: 20,),)
                                ],
                              ),
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const Code_040()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/040.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 040',style: const TextStyle(fontSize: 20,),)
                                ],
                              ),
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const Code_8V5()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/8V5.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 8V5',style: const TextStyle(fontSize: 20,),)
                                ],
                              ),
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const Code_1D6()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/1D6.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 1D6',style: const TextStyle(fontSize: 20,),)
                                ],
                              ),
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const Code_8X7()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/8X7.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 8X7',style: const TextStyle(fontSize: 20,),)
                                ],
                              ),
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const Code_4T8()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/4T8.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 4T8',style: const TextStyle(fontSize: 20,),)
                                ],
                              ), //blue

                            ],
                          ),
                        ),
              ),
          ),
          //),
        ],
      ),
    );
  }

  Widget makeDismissible({required Widget child, bottomNavigationBar}) =>
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {},
          child: child,
        ),
      );

  TableRow buildRow(List<String> cells, {bool isHeader = false}) {
    return TableRow(
      decoration: const BoxDecoration(
        color: Colors.white60,
      ),
      children: cells.map(
        (cell) {
          final style = TextStyle(
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
            fontSize: 18,
          );
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                cell,
                style: style,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
