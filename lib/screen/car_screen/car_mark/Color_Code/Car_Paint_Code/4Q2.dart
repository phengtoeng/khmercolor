import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';

const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);

class Code_4Q2 extends StatefulWidget {
  const Code_4Q2({Key? key}) : super(key: key);

  @override
  State<Code_4Q2> createState() => _Code_4Q2State();
}

class _Code_4Q2State extends State<Code_4Q2>
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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
          color: indicatorColor,
        ),
        toolbarHeight: 80,
        backgroundColor: carColor3,
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
                        color: textColor2,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml',], isHeader: true),
                    buildRow(['E69', '71.8', '107.7',], isHeader: false),
                    buildRow(['E74', '65.6(137.4)', '98.4(206.1)',]),
                    buildRow(['E77', '21.9(159.3)','32.8(238.9)',]),
                    buildRow(['E24', '15(174.3)', '22.5(261.4)',]),
                    buildRow(['E59', '13.1(187.4)', '19.7(281.1)',]),
                    buildRow(['E10', '8.1(195.5)', '12.2(293.3)',]),
                    buildRow(['E31', '1.9(197.4)', '2.8(296.1)',]),
                    buildRow(['E03', '1.9(199.3)', '2.8(298.9)',]),
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
                  child: Text(
                    "លាយពណ៌ដាក់ក្នុងកំប៉ុងបាញ់..",
                    style: TextStyle(
                        color: textColor2,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml '], isHeader: true),
                    buildRow(['E69', '35.9',]),
                    buildRow(['E74', '32.8(68.7)',]),
                    buildRow(['E77', '10.9(79.6)',]),
                    buildRow(['E24', '7.5(87.1)',]),
                    buildRow(['E59', '6.6(93.7)',]),
                    buildRow(['E10', '4.1(97.8)',]),
                    buildRow(['E31', '0.9(98.7)',]),
                    buildRow(['E03', '0.9(99.6)',]),
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
