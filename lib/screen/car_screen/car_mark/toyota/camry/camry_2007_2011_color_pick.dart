import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_black.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_blue.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_gold_sand.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_gray.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_red.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_silver.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_skyblue.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/toyota/camry/camry_2007-2011/camry_2007-2011_white.dart';

class camry_2007_2011_color_pick extends StatefulWidget {
  const camry_2007_2011_color_pick({Key? key}) : super(key: key);

  @override
  State<camry_2007_2011_color_pick> createState() {
    return _camry_2007_2011_color_pickState();
  }
}
class _camry_2007_2011_color_pickState
    extends State<camry_2007_2011_color_pick> {
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
                  child: Text("Toyota Camry",
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

                              ///2007-2011 White
                              const Center(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: Text(
                                    "Toyota Camry | 2007-2011",
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
                                                  const camry_2007_2011_blue()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/camry/camry_2007_blue.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 8T5',style: const TextStyle(fontSize: 20,),)
                                ],
                              ),//blue
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const camry_2007_color_black()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/camry/camry_2007_black.png',
                                    ),
                                  ),
                                  const Text('Paint Code 202- BLACK' ,style: TextStyle(fontSize: 18),)
                                ],
                              ),//black
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const camry_2007_2011_gold_sand()));
                                    },
                                    child: Image.asset('lib/images/toyota/camry/camry_2007_gold_sand.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 4Q2',style: const TextStyle(fontSize: 18),)
                                ],
                              ),//gold sand
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const camry_2007_2011_gray()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/camry/camry_2007_gray.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 1G3 - Magnetic Gray',style: TextStyle(fontSize: 18),),
                                ],
                              ),// Gray
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const camry_2007_2011_white()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/camry/camry_2007_white.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 040',style: const TextStyle(fontSize: 18),)
                                ],
                              ),//white
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const camry_2007_2011_red()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/camry/camry_2007_red.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 3R3 - Barcelona Red',style: const TextStyle(fontSize: 18),)
                                ],
                              ),//red
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const camry_2007_2011_silver()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/camry/camry_2007_silver.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 1F7 - Classic Silver',style: const TextStyle(fontSize: 18),)
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
                                              const camry_2007_2011_skyBlue()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/camry/camry_2007_green.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 8S4 SkyBlue Peal',style: const TextStyle(fontSize: 18),)
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
