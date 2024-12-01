import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';

const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0xffFFD93D);

class camry_2007_2011_gold_sand extends StatefulWidget {
  const camry_2007_2011_gold_sand({Key? key}) : super(key: key);

  @override
  State<camry_2007_2011_gold_sand> createState() =>
      _camry_2007_2011_gold_sandState();
}

class _camry_2007_2011_gold_sandState extends State<camry_2007_2011_gold_sand>
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
      backgroundColor: carColor20,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: carColor20,
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
                    "លាយពណ៌តាមគីឡូក្រាម ឬលីត..",
                    style: TextStyle(
                        color: textColor,
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
                      'ចំនួន 200ml ',
                      'ចំនួន 300ml',
                      'ចំនួន 500ML'
                    ], isHeader: true),
                    buildRow(['E74', '91.9', '137.8', '229.7']),
                    buildRow(
                        ['E74', '50.5(142.4)', '75.8(213.6)', '126.3(356)']),
                    buildRow(['E74', '22(164.4)', '33(246.6)', '55.1(411.1)']),
                    buildRow(
                        ['E74', '13.4(177.8)', '20(266.6)', '33.4(444.5)']),
                    buildRow(['E74', '7.6(185.4)', '11.4(278)', '18.9(463.4)']),
                    buildRow(['E74', '6.7(192.1)', '10(288)', '16.7(480.1)']),
                    buildRow([
                      'E74',
                      '5.3(197.4)',
                      '7.9(295.9)',
                      '13.1(493.2)',
                    ]),
                    buildRow(['E74', '1.8(199.2)', '2.7(298.6)', '4.5(497.7)']),
                  ],
                ),
              ),
              // Container(
              //   height: 150,
              //   width: 150,
              //   child: Image.asset('lib/images/camry_2007_gold_sand.png'),
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
                        color: textColor,
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
                    buildRow(['កូដពណ៌', 'ចំនួន 300ml ', 'ចំនួន 400ml'],
                        isHeader: true),
                    buildRow([
                      'cell',
                      'cell2',
                      'cell3',
                    ], isHeader: false),
                    buildRow([
                      'cell',
                      'cell2',
                      'cell3',
                    ]),
                    buildRow([
                      'cell',
                      'cell2',
                      'cell3',
                    ]),
                  ],
                ),
              ),
              // Container(
              //   height: 150,
              //   width: 150,
              //   child: Image.asset('lib/images/camry_2007_gold_sand.png'),
              // ),
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
