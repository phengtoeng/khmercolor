import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_black.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_blue.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_gold_sand.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_gray.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_red.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_silver.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_skyblue.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_white.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_barcelona_red_metallic.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_black.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_blue_crush_metallicl.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_blue_streak_metallic.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_celestial_silver.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_champagnel.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_classicl_silver.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_clearwater_blue.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_cosmic_gray.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_cypress_pearl.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_gray.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_parisian_night.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_pearl.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_predawn_gray.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_ruby_red.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_sandy_beach.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2012_2017/camry_2012-2017_white.dart';

class camry_2012_2017_color_pick extends StatefulWidget {
  const camry_2012_2017_color_pick({Key? key}) : super(key: key);

  @override
  State<camry_2012_2017_color_pick> createState() {
    return _camry_2012_2017_color_pickState();
  }
}

class _camry_2012_2017_color_pickState
    extends State<camry_2012_2017_color_pick> {
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

                    ///2007-2011 White
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text(
                          "Toyota Camry | 2012-2017",
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
                                        const camry_2017_color_blue_crush_metallic()));
                            //Navigator.of(context).pop;
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2007_blue_crush_metallic.png',
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
                                        const camry_2017_color_blue_streak_metallic()));
                            //Navigator.of(context).pop;
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_blue.png',
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
                                        const camry_2017_color_black()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_black.png',
                          ),
                        ),
                        const Text(
                          'Paint Code 218- Mid night BLACK',
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
                            'lib/images/toyota/camry/camry_2017_pearl.png',
                          ),
                        ),
                        const Text(
                          'Paint Code 070 Blizzard Pearl',
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
                                    const camry_2017_color_champagne()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_champagne.png',
                          ),
                        ),
                        const Text(
                          'Paint Code 5B2 CREME BRULEE MICA',
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
                                        const camry_2017_color_barcelona_red_metallic()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_red.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 3R3 - Barcelona Red',
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
                                    const camry_2017_color_classic_silver()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_classic_silver.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 1F7 - Classic Silver',
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
                                    const camry_2017_color_celestial_silver()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_celestial_silver.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 1J9 - celestial silver metallic',
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
                                    const camry_2017_color_clearwater_blue()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_clearwater_blue.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 8W1 សមុទ្រខៀវ',
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
                                    const camry_2017_color_cosmic_gray()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_cosmic_gray.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 1H2 កណ្ដុរប្រផេះ',
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
                                    const camry_2017_color_cypress_pearl()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_cypress_pearl.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 6T7',
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
                                    const camry_2017_color_gray()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_gray.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 1G3 ពណ៌ប្រផេះ ',
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
                                    const camry_2017_color_parisian_night()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_parisian_night.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 8W6  ',
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
                                    const camry_2017_color_predawn_gray()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_predawn.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 1H1  ',
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
                                    const camry_2017_color_ruby_red()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_ruby_red.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 1H1  ',
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
                                    const camry_2017_color_sandy_beach()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_sandy_beach.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 1H1  ',
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
                                    const camry_2017_color_white()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/camry/camry_2017_white.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code 040  ',
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),//classic Silver
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
