import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_1F7 extends StatefulWidget {
  const Code_1F7({Key? key}) : super(key: key);

  @override
  State<Code_1F7> createState() => _Code_1F7State();
}

class _Code_1F7State extends State<Code_1F7>
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
      backgroundColor: carColor11,
      appBar: AppBar(
        leading: IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: Icon(Icons.arrow_back),
          color: Colors.black87,
        ),
        toolbarHeight: 80,
        backgroundColor: carColor11,
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
                      fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml','ចំនួន500ml'], isHeader: true),
                    buildRow(['E71', '140.3', '210.4','350.7'], isHeader: false),
                    buildRow(['E69', '48.5(188.8)', '72.8(283.2)','121.3(472)']),
                    buildRow(['E59', '4.5(193.3)', '6.8(290)','11.4(483.4)']),
                    buildRow(['E10', '2.6(195.9)', '3.9(293.9)','6.5(489.9)']),
                    buildRow(['E61', '1.4(197.3)', '2.1(296)','3.5(493.4)']),
                    buildRow(['E31', '0.6(197.9)', '0.9(296.9)','1.4(494.8)']),
                    buildRow(['E30', '0.4(198.3)', '0.6(297.5)','0.9(495.7)']),
                    buildRow(['E02', '0.3(198.6)', '0.5(298)','0.8(496.5)']),
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
                    buildRow(['E71', '140.3'], isHeader: false),
                    buildRow(['E69', '48.5(188.8)']),
                    buildRow(['E59', '4.5(193.3)']),
                    buildRow(['E10', '2.6(195.9)']),
                    buildRow(['E61', '1.4(197.3)']),
                    buildRow(['E31', '0.6(197.9)']),
                    buildRow(['E30', '0.4(198.3)']),
                    buildRow(['E02', '0.3(198.6)']),
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
