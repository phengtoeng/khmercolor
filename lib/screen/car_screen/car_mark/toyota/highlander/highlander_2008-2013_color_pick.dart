import 'package:flutter/material.dart';


import '../../Color_Code/Car_Paint_Code/040.dart';
import '../../Color_Code/Car_Paint_Code/062.dart';
import '../../Color_Code/Car_Paint_Code/070.dart';
import '../../Color_Code/Car_Paint_Code/1C0.dart';
import '../../Color_Code/Car_Paint_Code/1F7.dart';
import '../../Color_Code/Car_Paint_Code/202.dart';
import '../../Color_Code/Car_Paint_Code/3Q3.dart';
import '../../Color_Code/Car_Paint_Code/3R0.dart';
import '../../Color_Code/Car_Paint_Code/4R3.dart';
import '../../Color_Code/Car_Paint_Code/4T8.dart';
import '../../Color_Code/Car_Paint_Code/586.dart';
import '../../Color_Code/Car_Paint_Code/6T7.dart';
import '../../Color_Code/Car_Paint_Code/8N6.dart';
import '../../Color_Code/Car_Paint_Code/8V5.dart';

class Highlander_2008_2013_Color_Pick extends StatefulWidget {
  const Highlander_2008_2013_Color_Pick({Key? key}) : super(key: key);

  @override
  State<Highlander_2008_2013_Color_Pick> createState() {
    return _Highlander_2008_2013_Color_PickState();
  }
}
class _Highlander_2008_2013_Color_PickState
    extends State<Highlander_2008_2013_Color_Pick> {
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
                                    "Toyota Highlander | 2008-2013",
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
                                              const Code_6T7()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/6T7.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 6T7',style: const TextStyle(fontSize: 20,),)
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
                                              const Code_3Q3()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/3Q3.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 3Q3',style: const TextStyle(fontSize: 20,),)
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
                                              const Code_3R0()));
                                      //Navigator.of(context).pop;
                                    },
                                    child: Image.asset(
                                      'lib/images/toyota/color/3R0.png',fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Text('Paint Code 3R0',style: const TextStyle(fontSize: 20,),)
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






