import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/070.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/1D6.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/1F7.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/color_code_all.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/1H1.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/1J9.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/218.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/3Q3.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/3R0.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/3T0.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/4W4.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/5B2.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/6T7.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/6w4.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8S6.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8V5.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8W6.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_black.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_blue.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_gold_sand.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_gray.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_red.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_silver.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_skyblue.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_white.dart';

import '../../Color_Code/copy_color_code.dart';
class Avalon_2013_2024_Color_Pick extends StatefulWidget {
  const Avalon_2013_2024_Color_Pick({Key? key}) : super(key: key);

  @override
  State<Avalon_2013_2024_Color_Pick> createState() {
    return _Avalon_2013_2024_Color_PickState();
  }
}
class _Avalon_2013_2024_Color_PickState
    extends State<Avalon_2013_2024_Color_Pick> {
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
                  child: Text("Toyota Avalon",
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
                                    "Toyota Avalon | 2013-2024",
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
                                                  const Code_218()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/218.png',
                                    ),
                                  ),
                                  const Text('Paint Code 218' ,style: TextStyle(fontSize: 18),)
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
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/070.png',
                                    ),
                                  ),
                                  const Text('Paint Code 070' ,style: TextStyle(fontSize: 18),)
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
                                              const Code_5B2()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/5B2.png',
                                    ),
                                  ),
                                  const Text('Paint Code 5B2' ,style: TextStyle(fontSize: 18),)
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
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/1F7.png',
                                    ),
                                  ),
                                  const Text('Paint Code 1F7' ,style: TextStyle(fontSize: 18),)
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
                                              const Code_1H1()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/1H2.png',
                                    ),
                                  ),
                                  const Text('Paint Code 1H2' ,style: TextStyle(fontSize: 18),)
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
                                              const Code_6T7()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/6T7.png',
                                    ),
                                  ),
                                  const Text('Paint Code 6T7' ,style: TextStyle(fontSize: 18),)
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
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/1G3.png',
                                    ),
                                  ),
                                  const Text('Paint Code 1G3' ,style: TextStyle(fontSize: 18),)
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
                                              const Code_3T0()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/3T0.png',
                                    ),
                                  ),
                                  const Text('Paint Code 3T0' ,style: TextStyle(fontSize: 18),)
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
                                              const Code_8W6()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/8W6.png',
                                    ),
                                  ),
                                  const Text('Paint Code 8V5' ,style: TextStyle(fontSize: 18),)
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
                                              const Code_3R0()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/3R0.png',
                                    ),
                                  ),
                                  const Text('Paint Code 3R0' ,style: TextStyle(fontSize: 18),)
                                ],
                              ),//black

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
