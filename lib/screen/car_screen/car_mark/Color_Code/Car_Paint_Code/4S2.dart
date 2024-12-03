import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_4S2 extends StatefulWidget {
  const Code_4S2({Key? key}) : super(key: key);

  @override
  State<Code_4S2> createState() => _Code_4S2State();
}

class _Code_4S2State extends State<Code_4S2>
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
      backgroundColor: carColor6,
      appBar: AppBar(leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
        color: indicatorColor,
      ),
        toolbarHeight: 80,
        backgroundColor: carColor6,
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
                  style: TextStyle(color: textColor,
                      fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ','ចំនួន 300ml','ចំនួន 500ml'], isHeader: true),
                    buildRow(['E42', '59.7', '89.6','149.3'], isHeader: false),
                    buildRow(['E74', '82.3(142)', '123.4(213)','205.7(355)']),
                    buildRow(['E10', '13.1(155.1)', '19.7(232.7)','32.8(387.8)']),
                    buildRow(['E32', '24(179.1)', '36(268.7)','60(447.8)']),
                    buildRow(['E59', '7.7(186.8)', '11.5(280.2)','19.2(467)']),
                    buildRow(['E61', '12(198.8)', '18(298.2)','30(497)']),
                    buildRow(['E05', '2.1(200.9)', '3.2(301.4)','5.4(502.4)']),
                    buildRow(['E24', '0.6(201.5)', '0.9(302.3)','1.5(503.9)']),
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
                    style: TextStyle(color: textColor,
                        fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5,right: 5),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml'], isHeader: true),
                    buildRow(['E42','29.9' ], isHeader: false),
                    buildRow(['E74','41.1(71)' ]),
                    buildRow(['E10','6.6(77.6)' ]),
                    buildRow(['E32','12(89.6)' ]),
                    buildRow(['E59','3.8(93.4)' ]),
                    buildRow(['E61','6.0(99.4)']),
                    buildRow(['E05','1.1(100.5)']),
                    buildRow(['E24','0.3(100.8)']),
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
