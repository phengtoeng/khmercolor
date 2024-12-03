import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Car_Paint_Code/040.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Car_Paint_Code/089.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Car_Paint_Code/1H1.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Car_Paint_Code/218.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Car_Paint_Code/221.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Car_Paint_Code/3T3.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Car_Paint_Code/4X7.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Car_Paint_Code/8T7.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Car_Paint_Code/8W7.dart';

import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_pearl.dart';



class camry_2018_2023_color_pick extends StatefulWidget {
  const camry_2018_2023_color_pick({Key? key}) : super(key: key);

  @override
  State<camry_2018_2023_color_pick> createState() {
    return _camry_2018_2023_color_pickState();
  }
}

class _camry_2018_2023_color_pickState
    extends State<camry_2018_2023_color_pick> {
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
                  child: Icon(
                    Icons.arrow_back,
                    size: 34,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Toyota Camry",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            color: Colors.redAccent,
          ),
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
                          "Toyota Camry | 2018-2023",
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
                                        const Code_8W7()));
                            //Navigator.of(context).pop;
                          },
                          child: Image.asset(

                            'lib/images/toyota/camry/camry_2022_blue_crush.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Text(
                          'Paint Code 8W7',
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        )
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
                                        const Code_8T7()));
                            //Navigator.of(context).pop;
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2022_blue_steak.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Text(
                          'Paint Code 8T7',
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ), //blue
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Code_4X7()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2022_brownstone.png',
                          ),
                        ),
                        const Text(
                          'Paint Code: 4X7 Brownstone',
                          style: TextStyle(fontSize: 18),
                        )
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
                                    const camry_2017_color_pearl()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2022_celestial_silver.png',
                          ),
                        ),
                        const Text(
                          'Paint Code 1J9 celestial Silver Metallic',
                          style: TextStyle(fontSize: 18),
                        )
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
                                    const Code_221()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2022_galactic_aquar.png',
                          ),
                        ),
                        const Text(
                          'Paint Code 221 calactic Aqua Metallic',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),//pearl////white
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
                            'lib/images/toyota/camry/camry_2022_midnight_black.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 218 Midnight Black',
                          style: const TextStyle(fontSize: 18),
                        )
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
                            'lib/images/toyota/camry/camry_2022_predawn_gray.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 1H1 Gray',
                          style: const TextStyle(fontSize: 18),
                        )
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
                                    const Code_3T3()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2022_ruby_flare_pearl.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 3T3 Ruby Flare Pearl',
                          style: const TextStyle(fontSize: 18),
                        )
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
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2022_superwhite.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 040 Super White',
                          style: const TextStyle(fontSize: 18),
                        )
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
                                    const Code_089()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2022_wind_chill.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 089 Wind Chill Pearl',
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),

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
