import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/040.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/089.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/1G3.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/1J9.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/218.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/3U5.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/4X4.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/6V7.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/6X3.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8X8.dart';

class Tundra_2014_2023_Color_Pick extends StatefulWidget {
  const Tundra_2014_2023_Color_Pick({Key? key}) : super(key: key);

  @override
  State<Tundra_2014_2023_Color_Pick> createState() {
    return _Tundra_2014_2023_Color_PickState();
  }
}
class _Tundra_2014_2023_Color_PickState
    extends State<Tundra_2014_2023_Color_Pick> {
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
                              color: Color(0xf9e8e7e7),
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

                              /// Tundra 2014-2023
                              const Center(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: Text(
                                    "Tundra | 2014-2023",
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
                                                  const Code_6V7()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/tundra/tundra_2022_army_green.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 6V7',style: const TextStyle(fontSize: 20,),)
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
                                                  const Code_8X8()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/tundra/tundra_2022_blueprint.png',
                                    ),
                                  ),
                                  const Text('Paint Code 8X8' ,style: TextStyle(fontSize: 18),)
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
                                                  const Code_1J9()));
                                    },
                                    child: Image.asset('lib/images/toyota/tundra/tundra_2022_celestial_silver.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 1J9',style: const TextStyle(fontSize: 18),)
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
                                                  const Code_6X3()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/tundra/tundra_2022_lunar_rock.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 6X3',style: TextStyle(fontSize: 18),),
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
                                                  const Code_040()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/tundra/tundra_2022_white.png',
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
                                                  const Code_1G3()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/tundra/tundra_2022_magnetic_gray.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 1G3',style: const TextStyle(fontSize: 18),)
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
                                                  const Code_218()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/tundra/tundra_2022_midnight_black.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 218',style: const TextStyle(fontSize: 18),)
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
                                              const Code_4X4()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/tundra/tundra_2022_smoked_mesquite.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 4X4',style: const TextStyle(fontSize: 18),)
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
                                              const Code_3U5()));
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/tundra/tundra_2022_super_sonic_red.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 3U5',style: const TextStyle(fontSize: 18),)
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
                                      'lib/images/toyota/tundra/tundra_2022_white.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text('Paint Code 089',style: const TextStyle(fontSize: 18),)
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
