import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = textColor1;
const indicatorColor = Color(0x98212121);


class Code_4X7 extends StatefulWidget {
  const Code_4X7({Key? key}) : super(key: key);

  @override
  State<Code_4X7> createState() => _Code_4X7State();
}

class _Code_4X7State extends State<Code_4X7>
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
                    buildRow(['E29', '80.9','121.4','202.3'],),
                    buildRow(['E55', '32.4(113.3)','48.7(170.1)','81.1(283.4)']),
                    buildRow(['E96', '28.3(141.6)', '42.5(212.6)','70.8(354.2)']),
                    buildRow(['E59', '25.5(167.1)', '38.2(250.8)','63.7(417.9)']),
                    buildRow(['E56', '21.7(188.8)', '32.5(283.3)','54.2(472.1)']),
                    buildRow(['E33', '4.2(193)', '6.3(289.6)','10.5(482.60']),
                    buildRow(['E25', '2.7(195.7)', '4.1(293.7)','6.8(489.40']),
                    buildRow(['E20', '1.7', '2.6(296.3)','4.3(493.70']),
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
                    buildRow(['E29', '32.4', ], isHeader: false),
                    buildRow(['E55', '13(45.4)',]),
                    buildRow(['E96', '11.3(56.7)']),
                    buildRow(['E59', '10.2(66.9)', ]),
                    buildRow(['E56', '8.7(75.6)',]),
                    buildRow(['E33', '1.7(77.3)',]),
                    buildRow(['E25', '1.1(78.4)',]),
                    buildRow(['E20', '0.7(79.1)',]),
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
