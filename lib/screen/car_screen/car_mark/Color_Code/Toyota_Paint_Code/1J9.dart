import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = textColor1;
const indicatorColor = Color(0x98212121);


class Code_1J9 extends StatefulWidget {
  const Code_1J9({Key? key}) : super(key: key);

  @override
  State<Code_1J9> createState() => _Code_1J9State();
}

class _Code_1J9State extends State<Code_1J9>
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
      backgroundColor: carColor3,
      appBar: AppBar(leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
    onPressed: () => Navigator.of(context).pop(),
    color: indicatorColor,
    ),
        toolbarHeight: 80,
        backgroundColor:  carColor3,
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
                  style: TextStyle(color: textColor1,
                      fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml','ចំនួន 300ml','ចំនួន 500ml'], isHeader: true),
                    buildRow(['E70', '88.6', '133','221.6'],),
                    buildRow(['E75', '101.9(190.6)','152.8(285)','254.7(476.3)']),
                    buildRow(['E02', '1.8(192.3)', '2.7(288.5)','4.5(480.8)']),
                    buildRow(['E10', '4.1(196.4)', '6.1(294.6)','10.2(491)']),
                    buildRow(['E59', '1.1(197.5)', '1.6(296.2)','2.7(493)']),
                    buildRow(['E25', '0.7(198.2)', '1.1(297.3)','1.8(495.5)']),
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
                    style: TextStyle(color: textColor1,
                        fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5,right: 5),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml'], isHeader: true),
                    buildRow(['E70', '44.3', ], isHeader: false),
                    buildRow(['E75', '50.9(95.2)',]),
                    buildRow(['E02', '0.9(96.1)']),
                    buildRow(['E10', '2(98.1)', ]),
                    buildRow(['E59', '0.5(98.6)',]),
                    buildRow(['E25', '0.4(99)',]),
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
