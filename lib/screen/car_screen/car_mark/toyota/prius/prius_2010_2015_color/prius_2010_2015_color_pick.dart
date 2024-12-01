import 'package:flutter/material.dart';
import 'package:khmerautocolor/all_reusable_card/MaterialButton_ColorPick.dart';
import 'package:khmerautocolor/all_reusable_card/ReusableText_ColorPick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/040.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/1F7.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/202.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/4T8.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/781.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8S6.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8T5.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8W1.dart';

class prius_color_10_15_color_pick extends StatefulWidget {
  const prius_color_10_15_color_pick({Key? key}) : super(key: key);


  @override
  State<prius_color_10_15_color_pick> createState() {
    return _prius_color_10_15_color_pickState();
  }
}

class _prius_color_10_15_color_pickState
    extends State<prius_color_10_15_color_pick> {
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
                  padding: EdgeInsets.only(top: 55,),
                  child: Text('Choose Year Color',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
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
                    color: Color(0xffF2F2F2),
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
                        )
                      ],
                    ),

                    ///2010-2015 White
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text(
                          "Toyota Prius | 2010-2015",
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
                      children: const [
                        MaterialButton_ColorPick(image:   'lib/images/toyota/prius/prius_2010_blue_ribbon.png',
                            NavigateCarColorPick: Code_8T5()),
                        ReusableText(text: 'ពណ៌ ខៀវ' , CodeText: "8T5")],),
                    Column(
                      children: const [
                        MaterialButton_ColorPick(image: 'lib/images/toyota/prius/prius_2010_clearwater_blue.png',
                            NavigateCarColorPick: Code_8W1()),
                        ReusableText(text: 'ពណ៌ខៀវទឹក' , CodeText: "8W1")],),
                    Column(
                      children: const [
                        MaterialButton_ColorPick(image: 'lib/images/toyota/prius/prius_2010_nautical_blue.png',
                            NavigateCarColorPick: Code_8S6()),
                        ReusableText(text: 'ពណ៌ខៀវចាស់' , CodeText: "8S6")],),
                    Column(
                      children: const [
                        MaterialButton_ColorPick(image:  'lib/images/toyota/prius/prius_2010_sandy_beach.png',
                            NavigateCarColorPick: Code_4T8()),
                        ReusableText(text: 'ពណ៌ខ្សាច់' , CodeText: "4T8")],),
                    Column(
                      children: const [
                        MaterialButton_ColorPick(image: 'lib/images/toyota/prius/prius_2010_sea_glass.png',
                            NavigateCarColorPick: Code_781()),
                        ReusableText(text: 'ពណ៌បៃតងស្រាល' , CodeText: "781")],),
                    Column(
                      children: const [
                        MaterialButton_ColorPick(image: 'lib/images/toyota/prius/prius_2010_silver.png',
                            NavigateCarColorPick: Code_1F7()),
                        ReusableText(text: 'ពណ៌ប្រាក់' , CodeText: "1F7")],),
                    Column(
                      children: const [
                        MaterialButton_ColorPick(image: 'lib/images/toyota/prius/prius_2010_white.png',
                            NavigateCarColorPick: Code_040()),
                        ReusableText(text: 'ពណ៌ស' , CodeText: "040")],),
                    Column(
                      children: const [
                        MaterialButton_ColorPick(image: 'lib/images/toyota/prius/prius2010grey.png',
                            NavigateCarColorPick: Code_8W1()),
                        ReusableText(text: 'ពណ៌កណ្តុរពណ៌ប្រផេះ' , CodeText: "8W1")],),
                    Column(
                      children: const [
                        MaterialButton_ColorPick(image: 'lib/images/toyota/prius/prius_2010_black.png',
                            NavigateCarColorPick: Code_202()),
                        ReusableText(text: 'ពណ៌ខ្មៅ' , CodeText: "202")],),
                    Container(
                      child:
                          Image.asset('lib/images/toyota/prius/prius_2010_2015_color.png'),
                    )
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


