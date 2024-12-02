import 'package:flutter/material.dart';
import 'package:khmerautocolor/all_reusable_card/MaterialButton_ColorPick.dart';
import 'package:khmerautocolor/all_reusable_card/ReusableText_ColorPick.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/040.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/color_code_all.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/781.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/070.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/218.dart';
import 'package:khmerautocolor/screen/car_screen/car_mark/Color_Code/Toyota_Paint_Code/8W7.dart';
import 'package:khmerautocolor/color/color.dart';

import '../../../Color_Code/copy_color_code.dart';

class prius_color_16_11_color_pick extends StatefulWidget {
  const prius_color_16_11_color_pick({Key? key}) : super(key: key);

  @override
  State<prius_color_16_11_color_pick> createState() {
    return _prius_color_16_11_color_pickState();
  }
}

class _prius_color_16_11_color_pickState
    extends State<prius_color_16_11_color_pick> {
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
                  child: Icon(
                    Icons.arrow_back,
                    size: 34,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 55,
                  ),
                  child: Text(
                    'Choose Year Color',
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

                    const Column(
                      children: [
                        MaterialButton_ColorPick(
                            image:
                                'lib/images/toyota/prius/prius_2017_pearl.png',
                            NavigateCarColorPick: Code_070()),
                        ReusableText(text: 'ពណ៌សគុជខ្យង', CodeText: "070")
                      ],
                    ),
                    const Column(
                      children: [
                        MaterialButton_ColorPick(
                            image:
                                'lib/images/toyota/prius/prius_2016_2021_black.png',
                            NavigateCarColorPick: Code_218()),
                        ReusableText(text: 'ពណ៌ខ្មៅ', CodeText: "218")
                      ],
                    ),
                    const Column(
                      children: [
                        MaterialButton_ColorPick(
                            image:
                                'lib/images/toyota/prius/prius_2016_2021_blue.png',
                            NavigateCarColorPick: Code_8W7()),
                        ReusableText(text: 'ពណ៌ខៀវ', CodeText: "8W7")
                      ],
                    ),
                    const Column(
                      children: [
                        MaterialButton_ColorPick(
                            image:
                                'lib/images/toyota/prius/prius_2016_2021_gray.png',
                            NavigateCarColorPick: CarColorCode(googlePageId: '1G3')),
                        ReusableText(text: 'ពណ៌ប្រផេះធ្យូង', CodeText: "1G3")
                      ],
                    ),
                    // Column(
                    //   children: const [
                    //     MaterialButton_ColorPick(
                    //         image:
                    //             'lib/images/toyota/prius/prius_2016_2021_hypersonic_red.png',
                    //         NavigateCarColorPick: Code_T37()),
                    //     ReusableText(text: 'ពណ៌ក្រហម', CodeText: "3T7")
                    //   ],
                    // ),
                    const Column(
                      children: [
                        MaterialButton_ColorPick(
                            image:
                                'lib/images/toyota/prius/prius_2016_2021_sea_glass.png',
                            NavigateCarColorPick: Code_781()),
                        ReusableText(
                            text: 'ពណ៌គុជខ្យងកែវសមុទ្រ', CodeText: "781")
                      ],
                    ),
                    const Column(
                      children: [
                        MaterialButton_ColorPick(
                            image:
                                'lib/images/toyota/prius/prius_2016_2021_white.png',
                            NavigateCarColorPick: Code_040()),
                        ReusableText(text: 'ពណ៌ស', CodeText: "040")
                      ],
                    ),
                    // Column(
                    //   children: const [
                    //     MaterialButton_ColorPick(image: 'lib/images/prius_2016_2021_abs',
                    //         NavigateCarColorPick: prius_2010_2015_color_white()),
                    //     ReusableText(text: 'ពណ៌' , CodeText: "0000")],),

                    Container(
                      child: Image.asset(
                          'lib/images/toyota/prius/prius_2016_2021_color.png'),
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
        color: backgroundColor2,
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
