//Modified Shorter version
import 'package:flutter/material.dart';
import 'package:khmerautocolor/all_reusable_card/ReusableText_ColorPick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/color_code_all.dart';
import '../../../Color_Code/Car_Paint_Code/040.dart';
import '../../../Color_Code/Car_Paint_Code/1F7.dart';
import '../../../Color_Code/Car_Paint_Code/202.dart';
import '../../../Color_Code/Car_Paint_Code/4S2.dart';
import '../../../Color_Code/Car_Paint_Code/8S2.dart';

class prius_color_05_09_color_pick extends StatefulWidget {
  const prius_color_05_09_color_pick({Key? key}) : super(key: key);

  @override
  _prius_color_05_09_color_pickState createState() => _prius_color_05_09_color_pickState();
}

class _prius_color_05_09_color_pickState extends State<prius_color_05_09_color_pick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          _buildHeader(),
          _buildColorPicker(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: Colors.redAccent,
      alignment: AlignmentDirectional.topStart,
      child: const Padding(
        padding: EdgeInsets.fromLTRB(15, 60, 0, 0),
        child: Row(
          children: [
            Icon(Icons.arrow_back, size: 34),
            SizedBox(width: 10),
            Text(
              'ជ្រើសរើសឆ្នាំផលិត',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorPicker() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: DraggableScrollableSheet(
        initialChildSize: 0.85,
        maxChildSize: 0.85,
        minChildSize: 0.5,
        builder: (context, scrollController) => Container(
          decoration: const BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          padding: const EdgeInsets.all(20),
          child: ListView(
            controller: scrollController,
            children: [
              _buildDraggableIndicator(),
              _buildTitle(),
              ..._buildColorOptions(),
              Image.asset('lib/images/toyota/prius/prius_2004_2009_color.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDraggableIndicator() {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: 5,
        width: 120,
        decoration: const BoxDecoration(
          color: Color(0xff585757),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Column(
      children: const [
        Text(
          "Toyota Prius | 2005-2009",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          "ជ្រើសរើសពណ៌រថយន្ត..",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  List<Widget> _buildColorOptions() {
    final colors = [
      {'asset': 'prius_2005_2009_red.png', 'name': 'ពណ៌ Salsa Red Pearl', 'code': '3Q3', 'page': const CarColorCode(googlePageId: '3Q3')},
      {'asset': 'prius_2005_2009_grey.png', 'name': 'ពណ៌ ប្រផេះ', 'code': '1G3', 'page': const CarColorCode(googlePageId: '1G3')},
      {'asset': 'prius_2005_2009_blue.png', 'name': 'ពណ៌ ទឹកសមុទ្រ', 'code': '8S2', 'page': const CarColorCode(googlePageId: '3Q3')},
      {'asset': 'prius_2005_2009_silver.png', 'name': 'ពណ៌ ប្រាក់', 'code': '1F7', 'page':const CarColorCode(googlePageId: '1F7')},
      {'asset': 'prius_2005_2009_black.png', 'name': 'ពណ៌ ខ្មៅ', 'code': '202', 'page':const CarColorCode(googlePageId: '202')},
      {'asset': 'prius_2005_2009_gold.png', 'name': 'ពណ៌មាស', 'code': '4S2', 'page': const CarColorCode(googlePageId: '4S2')},
      {'asset': 'prius_2005_2009_white.png', 'name': 'ពណ៌ ស', 'code': '040', 'page': const CarColorCode(googlePageId: '040')},
    ];

    return colors.map((color) {
      return Column(
        children: [
          MaterialButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => color['page'] as Widget)),
            child: Image.asset('lib/images/toyota/prius/${color['asset']}', fit: BoxFit.cover),
          ),
          ReusableText(text: color['name'] as String, CodeText: '(${color['code']})')
        ],
      );
    }).toList();
  }
}




///Original Code working
// import 'package:flutter/material.dart';
// import 'package:khmerautocolor/all_reusable_card/ReusableText_ColorPick.dart';
//
// import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/color_code_all.dart';
//
//
// import '../../../Color_Code/Car_Paint_Code/040.dart';
// import '../../../Color_Code/Car_Paint_Code/1F7.dart';
// import '../../../Color_Code/Car_Paint_Code/202.dart';
// import '../../../Color_Code/Car_Paint_Code/4S2.dart';
// import '../../../Color_Code/Car_Paint_Code/8S2.dart';
// import '../../../Color_Code/copy_color_code.dart';
//
// class prius_color_05_09_color_pick extends StatefulWidget {
//   const prius_color_05_09_color_pick({Key? key}) : super(key: key);
//
//   @override
//   State<prius_color_05_09_color_pick> createState() {
//     return _prius_color_05_09_color_pickState();
//   }
// }
// class _prius_color_05_09_color_pickState
//     extends State<prius_color_05_09_color_pick> {
//   String title = 'BottomNavigationBar';
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//
//           Container(
//             alignment: AlignmentDirectional.topStart,
//             child: const Row(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(15, 60, 0, 0),
//                   child: Icon(
//                     Icons.arrow_back,
//                     size: 34,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 55,),
//                   child: Text('ជ្រើសរើសឆ្នាំផលិត',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//               ],
//             ),
//             color: Colors.redAccent,
//           ),
//           makeDismissible(
//             child: DraggableScrollableSheet(
//                 initialChildSize: 0.85,
//                 maxChildSize: 0.85,
//                 minChildSize: 0.5,
//                 builder:
//                     (BuildContext context, ScrollController scrollController) =>
//                         Container(
//                           decoration: const BoxDecoration(
//                               color: Color(0xffF2F2F2),
//                               borderRadius: BorderRadius.vertical(
//                                 top: Radius.circular(20),
//                               )),
//                           padding: const EdgeInsets.all(20),
//                           child: ListView(
//                             controller: scrollController,
//                             scrollDirection: Axis.vertical,
//                             children: [
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   Container(
//                                     decoration: const BoxDecoration(
//                                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                                       color: Color(0xff585757),
//                                     ),
//                                     margin: const EdgeInsets.only(bottom: 10),
//                                     height: 5,
//                                     width: 120,
//
//                                   )
//
//                                 ],
//                               ),
//
//                               ///2005-2009
//                               const Center(
//                                 child: Padding(
//                                   padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
//                                   child: Text(
//                                     "Toyota Prius | 2005-2009",
//                                     style: TextStyle(
//                                         fontSize: 20, fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                               ),
//                               const Padding(
//                                 padding: EdgeInsets.only(left: 10.0, top: 10),
//                                 child: Center(
//                                     child: Text(
//                                   "ជ្រើសរើសពណ៌រថយន្ត..",
//                                   style: TextStyle(
//                                       fontSize: 26, fontWeight: FontWeight.bold),
//                                 )),
//                               ), //prius 2005-2009 (Color White)
//
//                               Column(
//                                 children: [
//                                   MaterialButton(
//                                     onPressed: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                               const CarColorCode(googlePageId: '3Q3')));
//
//                                       //Navigator.of(context).pop;
//                                     },
//                                     child: Image.asset(
//                                       'lib/images/toyota/prius/prius_2006_red.png',
//                                     ),
//                                   ),
//                                   const ReusableText(text: 'ពណ៌ Salsa Red Pearl' , CodeText: "(3Q3)")
//                                 ],
//                               ),
//                               Column(
//                                 children: [
//                                   MaterialButton(
//                                     onPressed: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const CarColorCode(googlePageId: '1G3')));
//                                     },
//                                     child: Image.asset(
//                                       'lib/images/toyota/prius/prius_2006_grey.png',
//                                     ),
//                                   ),
//                                   const ReusableText(text: 'ពណ៌ ប្រផេះ' , CodeText: "(1G3)")
//                                 ],
//                               ),
//                               Column(
//                                 children: [
//                                   MaterialButton(
//                                     onPressed: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const Code_8S2()));
//                                     },
//                                     child: Image.asset(
//                                       'lib/images/toyota/prius/prius_2006_blue.png',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                   const ReusableText(text: 'ពណ៌ ទឹកសមុទ្រ' , CodeText: "(8S2)")
//                                 ],
//                               ),
//                               Column(
//                                 children: [
//                                   MaterialButton(
//                                     onPressed: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const Code_1F7()));
//                                     },
//                                     child: Image.asset(
//                                       'lib/images/toyota/prius/prius_2006_silver.png',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                   const ReusableText(text: 'ពណ៌ ប្រាក់' , CodeText: "1F7")
//                                 ],
//                               ),
//                               Column(
//                                 children: [
//                                   MaterialButton(
//                                     onPressed: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const Code_202()));
//                                     },
//                                     child: Image.asset(
//                                       'lib/images/toyota/prius/prius_2006_black.png',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                   const ReusableText(text: 'ពណ៌ ខ្មៅ' , CodeText: "202")
//                                 ],
//                               ),
//                               Column(
//                                 children: [
//                                   MaterialButton(
//                                     onPressed: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const Code_4S2()));
//                                     },
//                                     child: Image.asset(
//                                       'lib/images/toyota/prius/prius_2006_gold.png',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                   const ReusableText(text: 'ពណ៌មាស ' , CodeText: "4S2")
//                                 ],
//                               ),
//                               Column(
//                                 children: [
//                                   MaterialButton(
//                                     onPressed: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   const Code_040()));
//                                     },
//                                     child: Image.asset(
//                                       'lib/images/toyota/prius/prius_2006_white.png',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                   const ReusableText(text: 'ពណ៌ ស' , CodeText: "040")
//                                 ],
//                               ),
//                               Container(
//                                 child: Image.asset('lib/images/toyota/prius/prius_2004_2009_color.png'),
//                               )
//                             ],
//                           ),
//                         ),
//               ),
//           ),
//           //),
//         ],
//       ),
//     );
//   }
//
//   Widget makeDismissible({required Widget child, bottomNavigationBar}) =>
//       GestureDetector(
//         behavior: HitTestBehavior.opaque,
//         onTap: () => Navigator.of(context).pop(),
//         child: GestureDetector(
//           onTap: () {},
//           child: child,
//         ),
//       );
//
//   TableRow buildRow(List<String> cells, {bool isHeader = false}) {
//     return TableRow(
//       decoration: const BoxDecoration(
//         color: Colors.white60,
//       ),
//       children: cells.map(
//         (cell) {
//           final style = TextStyle(
//             fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
//             fontSize: 18,
//           );
//           return Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Center(
//               child: Text(
//                 cell,
//                 style: style,
//               ),
//             ),
//           );
//         },
//       ).toList(),
//     );
//   }
// }
//
//
//
