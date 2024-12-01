import 'package:flutter/material.dart';
import 'package:khmerautocolor/modelcode/model_code.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_1C0 extends StatefulWidget {
  const Code_1C0({Key? key}) : super(key: key);

  @override
  State<Code_1C0> createState() => _Code_1C0State();
}

class _Code_1C0State extends State<Code_1C0>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  void dispos() {
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CodeModel(controller: controller,
        mixTopCode1: [
          buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml',], isHeader: true),
          buildRow(['E74', '169.7', '254.4',]),
          buildRow(['E72', '9.8(179.5)', '14.7(269.2)',]),
          buildRow(['E59', '7.8(187.3)', '11.6(280.8)',]),
          buildRow(['E32', '6.2(193.5)', '9.3(290.1)',]),
          buildRow(['E99', '3.7(197.2)', '5.5(295.6)',]),
          buildRow(['E01', '1(198.2)', '1.5(297.1)',]),
        ],
        mixToCan: [buildRow(['កូដពណ៌', 'ចំនួន 100ml '], isHeader: true),
          buildRow(['E74', '84.8',]),
          buildRow(['E72', '4.9',]),
          buildRow(['E59', '3.9',]),
          buildRow(['E32', '3.1',]),
          buildRow(['E99', '1.8',]),
          buildRow(['E01', '0.5',]),
        ]
    );
  }
}
//     return Scaffold(
//
//       backgroundColor: carColor3,
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios),
//           onPressed: () => Navigator.of(context).pop(),
//           color: indicatorColor,
//         ),
//         toolbarHeight: 80,
//         backgroundColor: carColor3,
//         bottom: TabBar(
//           indicatorColor: indicatorColor,
//           indicatorWeight: 2.0,
//           controller: controller,
//           tabs: [
//             Tab(
//                 child: Image.asset(
//               'lib/images/conceptpaint.png',
//               scale: 1,
//             )),
//             Tab(
//               child: Image.asset('lib/images/spray_can.png'),
//             ),
//           ],
//         ),
//         shadowColor: Colors.transparent,
//       ),
//       body: TabBarView(
//         controller: controller,
//         children: [
//           ListView(
//             children: [
//               const Center(
//                 child: Padding(
//                   padding: EdgeInsets.all(12.0),
//                   child: Text("លាយពណ៌តាមគីឡូក្រាម ឬលីត..",
//                   style: TextStyle(color: textColor1,
//                       fontSize: 20,fontWeight: FontWeight.normal),),
//                 ),
//               ),
//               Container(
//                 child: Table(
//                   border: TableBorder.all(),
//                   children: [
//                     buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml',], isHeader: true),
//                     buildRow(['E74','169.7', '254.4',], isHeader: false),
//                     buildRow(['E72','9.8(179.5)', '14.7(269.2)',]),
//                     buildRow(['E59','7.8(187.3)', '11.6(280.8)',]),
//                     buildRow(['E32','6.2(193.5)', '9.3(290.1)',]),
//                     buildRow(['E99','3.7(197.2)', '5.5(295.6)',]),
//                     buildRow(['E01','1(198.2)', '1.5(297.1)',]),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           ListView(
//             children: [
//               const Center(
//                 child: Padding(
//                   padding: EdgeInsets.all(12.0),
//                   child: Text("លាយពណ៌ដាក់ក្នុងកំប៉ុងបាញ់..",
//                     style: TextStyle(color: textColor1,
//                         fontSize: 20,fontWeight: FontWeight.normal),),
//                 ),
//               ),
//
//               Container(
//                 margin: EdgeInsets.only(left: 5,right: 5),
//                 child: Table(
//                   border: TableBorder.all(),
//                   children: [
//                     buildRow(['កូដពណ៌', 'ចំនួន 100ml '], isHeader: true),
//                     buildRow(['E74', '84.8', ]),
//                     buildRow(['E72', '4.9', ]),
//                     buildRow(['E59', '3.9', ]),
//                     buildRow(['E32', '3.1', ]),
//                     buildRow(['E99', '1.8', ]),
//                     buildRow(['E01', '0.5', ]),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//   Widget makeDismissible({required Widget child}) => GestureDetector(
//         behavior: HitTestBehavior.opaque,
//         onTap: () => Navigator.of(context).pop(),
//         child: GestureDetector(
//           onTap: () {},
//           child: child,
//         ),
//       );
// }
// TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
//       children: cells.map((cell) {
//         return Material(
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Center(
//               child: Text(
//                 cell,
//                 style: const TextStyle(fontSize: 12, color: Colors.black54),
//               ),
//             ),
//           ),
//         );
//       }).toList(),