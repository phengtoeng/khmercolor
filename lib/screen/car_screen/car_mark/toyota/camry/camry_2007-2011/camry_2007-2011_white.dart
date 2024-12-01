import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';

const textColor = Color(0xfffdfdfc);
const textColorBlack = Color(0xff100f0f);
const indicatorColor = Color(0xffFFD93D);

class camry_2007_2011_white extends StatefulWidget {
  const camry_2007_2011_white({Key? key}) : super(key: key);

  @override
  State<camry_2007_2011_white> createState() => _camry_2007_2011_whiteState();
}

class _camry_2007_2011_whiteState extends State<camry_2007_2011_white>
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
      backgroundColor: carColor21,
      appBar: AppBar(
        leading: IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: Icon(Icons.arrow_back),
          color: Colors.black87,
        ),
        toolbarHeight: 80,
        backgroundColor: carColor21,
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
                      'ចំនួន 200ml ',
                      'ចំនួន 300ml',
                      'ចំនួន 500ml'
                    ], isHeader: true),
                    buildRow(['E62', '221.6', '332.3', '553.9'],
                        isHeader: false),
                    buildRow(['E41', '2.9(224.5)', '4.3(336.6)', '7.1(561)']),
                    buildRow(['E33', '0.4(224.9)', '0.6(337.2)', '1(562)']),
                    buildRow(['E20', '0.3(225.2)', '0.4(337.6)', '0.7(562.7)']),
                  ],
                ),
              ),
              const Center(
                child: Text(
                  "សម្រាប់ឡានចាស់ ពណ៌លឿងបន្តិច",
                  style: TextStyle(
                      color: textColor1,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
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
                      'ចំនួន 500ml'
                    ], isHeader: true),
                    buildRow(['E31', '209.4', '314', '523.4'], isHeader: false),
                    buildRow(['E41', '4.2', '6.4(320.4)', '10.6(534)']),
                    buildRow(['E33', '0.7', '1(321.4)', '1.7(535.7)']),
                    buildRow(['E20', '0.1', '0.1(321.5)', '0.2(535.9)']),
                  ],
                ),
              ),
              // Container(
              //   height: 150,
              //   width: 150,
              //   child: Image.asset('lib/images/camry_2007_white.png'),
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
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml'], isHeader: true),
                    buildRow(['E31', '104.7'], isHeader: false),
                    buildRow(['E41', '2.1(106.8)']),
                    buildRow(['E33', '0.3(107.1)']),
                    buildRow(['E20', '0.05(107.15)']),
                  ],
                ),
              ),
              // Container(
              //   height: 150,
              //   width: 150,
              //   child: Image.asset('lib/images/camry_2007_white.png'),
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
                style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      }).toList(),
    );
