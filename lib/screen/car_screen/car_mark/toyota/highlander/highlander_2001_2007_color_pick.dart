import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/040.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/062.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/1C0.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/202.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/4R3.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/586.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8N6.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_black.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_blue.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_gold_sand.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_gray.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_red.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_silver.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_skyblue.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_white.dart';

class Highlander_2001_2007_Color_Pick extends StatefulWidget {
  const Highlander_2001_2007_Color_Pick({Key? key}) : super(key: key);

  @override
  State<Highlander_2001_2007_Color_Pick> createState() {
    return _Highlander_2001_2007_Color_PickState();
  }
}
class _Highlander_2001_2007_Color_PickState
    extends State<Highlander_2001_2007_Color_Pick> {
  String title = 'BottomNavigationBar';

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            alignment: AlignmentDirectional.topStart,
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 60, 0, 0),
                  child: Icon(Icons.arrow_back,size: 34,),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Toyota HighLander",
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
                                    "Toyota Highlander | 2007-2011",
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
                                              const Code_062()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/062.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 062',style: const TextStyle(fontSize: 20,),)
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
                                              const Code_1C0()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/1C0.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 1C0',style: const TextStyle(fontSize: 20,),)
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
                                              const Code_4R3()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/4R3.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 4R3',style: const TextStyle(fontSize: 20,),)
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
                                              const Code_586()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/586.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 586',style: const TextStyle(fontSize: 20,),)
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
                                              const Code_8N6()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/8N6.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 8N6',style: const TextStyle(fontSize: 20,),)
                                ],
                              ),//blue

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
