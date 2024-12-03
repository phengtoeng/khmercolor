import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_8W6 extends StatefulWidget {
  const Code_8W6({Key? key}) : super(key: key);

  @override
  State<Code_8W6> createState() => _Code_8W6State();
}

class _Code_8W6State extends State<Code_8W6>
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
      backgroundColor: carColor4,
      appBar: AppBar(leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
        color: indicatorColor,
      ),
        toolbarHeight: 80,
        backgroundColor: carColor4,
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
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml',], isHeader: true),
                    buildRow(['E03', '32.7','49.1']),
                    buildRow(['E10', '65.1(97.8)', '97.7(146.8)']),
                    buildRow(['E34', '20(117.8)', '30(176.8)']),
                    buildRow(['E98', '22.1(139.9)', '33.1(209.9)']),
                    buildRow(['E56', '15.8(155.7)', '23.7(233.6)']),
                    buildRow(['E45', '20.1(175.8)', '30.2(263.8)']),
                    buildRow(['E59', '14.7(190.5)', '22.1(285.9)']),
                    buildRow(['E02', '10.5(201)', '15.8(301.7)']),
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
                    buildRow(['កូដពណ៌', 'ចំនួន 300ml '], isHeader: true),
                    buildRow(['E03', '16.4']),
                    buildRow(['E10', '32.6(49)',]),
                    buildRow(['E34', '10(59)', ]),
                    buildRow(['E98', '11(70)',]),
                    buildRow(['E56', '7.9(77.9)',]),
                    buildRow(['E45', '10.1(88)',]),
                    buildRow(['E59', '7.4(95.4)',]),
                    buildRow(['E02', '5.3(100.7)',]),

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
