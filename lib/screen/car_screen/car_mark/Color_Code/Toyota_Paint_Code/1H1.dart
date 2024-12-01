import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = textColor1;
const indicatorColor = Color(0x98212121);


class Code_1H1 extends StatefulWidget {
  const Code_1H1({Key? key}) : super(key: key);

  @override
  State<Code_1H1> createState() => _Code_1H1State();
}

class _Code_1H1State extends State<Code_1H1>
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
      backgroundColor: carColor41,
      appBar: AppBar(leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
        color: indicatorColor,
      ),
        toolbarHeight: 80,
        backgroundColor:  carColor41,
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
                  child: Text("លាយពណ៌តាមគីឡូក្រាម ឬលីត..",
                  style: TextStyle(color: textColor3,
                      fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml','ចំនួន 300ml','ចំនួន 500ml'], isHeader: true),
                    buildRow(['E74', '88.3','132.5','220.8'],),
                    buildRow(['E10', '76.1(164.4)','114.1(246.6)','190.2(411)']),
                    buildRow(['E92', '11.5(175.9)','17.3(263.9)','28.8(439.8)']),
                    buildRow(['E75', '10.7(186.6)','16(279.9)','26.6(466.4)']),
                    buildRow(['E34', '6.7(193.3)', '10.1(290)','16.8(483.2)']),
                    buildRow(['E36', '3.4(196.7)', '5(295)','8.4(491.6)']),
                    buildRow(['E01', '2.6(199.3)', '4(299)','6.6(498.2)']),
                    buildRow(['E61', '1.2(200.5)', '1.9(300.9)','3.1(501.3)']),
                  ],
                ),
              ),

            ],
          ),
          ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("លាយពណ៌ដាក់ក្នុងកំប៉ុងបាញ់..",
                    style: TextStyle(color: textColor3,
                        fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5,right: 5),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml'], isHeader: true),
                    buildRow(['E74', '44.2', ], isHeader: false),
                    buildRow(['E10', '38(82.2)',]),
                    buildRow(['E92', '5.8(88)']),
                    buildRow(['E75', '5.3(93.3)', ]),
                    buildRow(['E34', '3.4(96.7)',]),
                    buildRow(['E36', '1.7(98.4)',]),
                    buildRow(['E01', '1.3(99.7)',]),
                    buildRow(['E61', '0.6(100.3)',]),
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
