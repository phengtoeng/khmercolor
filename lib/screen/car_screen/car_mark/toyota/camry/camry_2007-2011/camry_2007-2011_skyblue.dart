import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';

const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0xffFFD93D);

class camry_2007_2011_skyBlue extends StatefulWidget {
  const camry_2007_2011_skyBlue({Key? key}) : super(key: key);

  @override
  State<camry_2007_2011_skyBlue> createState() =>
      _camry_2007_2011_skyBlueState();
}

class _camry_2007_2011_skyBlueState extends State<camry_2007_2011_skyBlue>
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
    return Scaffold(
      backgroundColor: carColor25,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: carColor25,
        bottom: TabBar(
          indicatorColor: indicatorColor,
          indicatorWeight: 2.0,
          controller: controller,
          tabs: [
            Tab(
                child: Image.asset(
              'lib/images/conceptpaint.png',
              scale: 1,
            )),
            Tab(
              child: Image.asset('lib/images/spray_can.png'),
            ),
          ],
        ),
        shadowColor: Colors.transparent,
      ),
      body: TabBarView(
        controller: controller,
        children: [
          ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "ពណ៌ស្តង់ដារ OEM COLOR .",
                    style: TextStyle(
                        color: textColor1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow([
                      'កូដពណ៌',
                      'ចំនួន 300ml ',
                      'ចំនួន 500',
                    ], isHeader: true),
                    buildRow(['E69','211.8','353']),
                    buildRow(['E72','38.8(250.6)','64.7(417.7)']),
                    buildRow(['E59','20.5(271.1)','34.2(451.9)']),
                    buildRow(['E02','8.5(279.6)','14.2(466.1)']),
                    buildRow(['E61','7(286.6)','11.7(477.8)']),
                    buildRow(['E31','6.4(293)','10.6(488.4)']),
                    buildRow(['E92','5(298)','8.3(496.7)']),
                  ],
                ),
              ),
              // Container(
              //   height: 150,
              //   width: 150,
              //   child: Image.asset('lib/images/camry_2007_silver.png'),
              // ),

            ],
          ),
          ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "លាយពណ៌ដាក់ក្នុងកំប៉ុងបាញ់..",
                    style: TextStyle(
                        color: textColor1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5,right: 5),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow([
                      'កូដពណ៌',
                      'ចំនួន 100ml ',
                    ], isHeader: true),
                    buildRow(['E69', '70.6']),
                    buildRow(['E72', '12.9(83.5)']),
                    buildRow(['E59', '6.8(90.3)']),
                    buildRow(['E02', '2.8(93.1)']),
                    buildRow(['E61', '2.3(95.4)']),
                    buildRow(['E31', '2.1(97.5)']),
                    buildRow(['E92', '1.7(99.2)']),
                  ],
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }

  Widget makeDismissible({required Widget child}) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {},
          child: child,
        ),
      );
}

TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
      children: cells.map((cell) {
        return Material(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                cell,
                style: const TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ),
          ),
        );
      }).toList(),
    );
