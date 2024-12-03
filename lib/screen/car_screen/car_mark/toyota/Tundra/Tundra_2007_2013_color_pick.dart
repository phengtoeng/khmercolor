import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Car_Paint_Code/6T8.dart';


import '../../Color_Code/Car_Paint_Code/040.dart';
import '../../Color_Code/Car_Paint_Code/1D6.dart';
import '../../Color_Code/Car_Paint_Code/1F9.dart';
import '../../Color_Code/Car_Paint_Code/3Q3.dart';
import '../../Color_Code/Car_Paint_Code/3R3.dart';
import '../../Color_Code/Car_Paint_Code/4Q2.dart';
import '../../Color_Code/Car_Paint_Code/4T3.dart';
import '../../Color_Code/Car_Paint_Code/6V4.dart';
import '../../Color_Code/Car_Paint_Code/8S6.dart';
import '../../Color_Code/color_code_all.dart';
import '../../Color_Code/copy_color_code.dart';


class Tundra_2000_2013_Color_Pick extends StatefulWidget {
  const Tundra_2000_2013_Color_Pick({Key? key}) : super(key: key);

  @override
  State<Tundra_2000_2013_Color_Pick> createState() {
    return _Tundra_2000_2013_Color_PickState();
  }
}
class _Tundra_2000_2013_Color_PickState
    extends State<Tundra_2000_2013_Color_Pick> {
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
                              ),
                              Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/tundra/tundra_2013_magnetic_gray.png',
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
                                              builder: (context) =>
                                                  const Code_4Q2()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/202.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 202',style: const TextStyle(fontSize: 20,),)
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
                                                  const Code_4Q2()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/4Q2.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 4Q2' ,style: TextStyle(fontSize: 18),)
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
                                                  const Code_3R3()));
                                    },
                                    child: Image.asset('lib/images/toyota/color/3R3.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 3R3',style: const TextStyle(fontSize: 18),)
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
                                                  const CarColorCode(googlePageId: '1G3')));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/1G3.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 1G3',style: TextStyle(fontSize: 18),),
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
                                                  const Code_8S6()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/8S6.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 8S6',style: const TextStyle(fontSize: 18),)
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
                                                  const Code_4T3()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/4T3.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 4T3',style: const TextStyle(fontSize: 18),)
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
                                                  const Code_3Q3()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/3Q3.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 3Q3',style: const TextStyle(fontSize: 18),)
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
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/1D6.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 1D6',style: const TextStyle(fontSize: 18),)
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
                                              const Code_1F9()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/1F9.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 1F9',style: const TextStyle(fontSize: 18),)
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
                                              const Code_6V4()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/6V4.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 6V4',style: const TextStyle(fontSize: 18),)
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
                                      'lib/images/toyota/color/040.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 040',style: const TextStyle(fontSize: 18),)
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
                                              const Code_6T8()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/6T8.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 6T8',style: const TextStyle(fontSize: 18),)
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



