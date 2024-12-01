import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/040.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/1F7.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/1G3.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/202.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/218.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/4R3.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/4S6.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8P8.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8R3.dart';

class landcruiser_1998_2007_Color_Pick extends StatefulWidget {
  const landcruiser_1998_2007_Color_Pick({Key? key}) : super(key: key);

  @override
  State<landcruiser_1998_2007_Color_Pick> createState() {
    return _landcruiser_1998_2007_Color_PickState();
  }
}

class _landcruiser_1998_2007_Color_PickState
    extends State<landcruiser_1998_2007_Color_Pick> {
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
                    "Toyota Land Cruiser",
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
                    color: Color(0xff9e9d9a),
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
                          "Toyota LandCruiser | 1998_2007",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10, bottom: 20),
                      child: Center(
                          child: Text(
                        "ជ្រើសរើសពណ៌រថយន្ត..",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      )),
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Code_202()));
                            //Navigator.of(context).pop;
                          },
                          child: Image.asset(
                            'lib/images/toyota/landcruiser/landcruiser_2007_black.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),//prius 2005-2009 (Color White)
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Code_202()));
                            //Navigator.of(context).pop;
                          },
                          child: Image.asset(
                            'lib/images/toyota/landcruiser/202.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Text(
                          'Code 202 Black',
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Code_218()));
                            //Navigator.of(context).pop;
                          },
                          child: Image.asset(
                            'lib/images/toyota/landcruiser/218.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Text(
                          'Code 218 Mid Night Black',
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ), //blue
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Code_8P8()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/landcruiser/8P8.png',
                          ),
                        ),
                        const Text(
                          'Code 8P8 Blue Onyx Pearl ',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Code_4R3()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/landcruiser/4R3.png',
                          ),
                        ),
                        const Text(
                          '4R3 Sonora Gold Pearl',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Code_1G3()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/landcruiser/1G3.png',
                          ),
                        ),
                        const Text(
                          'Paint Code 1G3 Megnetic Gray',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ), //pearl////white
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Code_4S6()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/landcruiser/4S6.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Code 4S6 Bradywie Mica',
                          style: const TextStyle(fontSize: 18),
                        ),SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Code_1F7()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/landcruiser/1F7.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Code 1F7 - Classic Silver',
                          style: const TextStyle(fontSize: 18),
                        ),SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Code_040()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/landcruiser/040.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Code  040 white',
                          style: const TextStyle(fontSize: 18),
                        ),SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Code_8R3()));
                          },
                          child: Image.asset(
                            'lib/images/toyota/landcruiser/8R3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Paint Code  8R3 Pacific Blue',
                          style: const TextStyle(fontSize: 18),
                        ),
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
