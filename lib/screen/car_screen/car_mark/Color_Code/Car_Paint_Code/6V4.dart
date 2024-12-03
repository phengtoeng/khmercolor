import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0xffFFD93D);


class Code_6V4 extends StatefulWidget {
  const Code_6V4({Key? key}) : super(key: key);

  @override
  State<Code_6V4> createState() => _Code_6V4State();
}

class _Code_6V4State extends State<Code_6V4>
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
                    buildRow(['E10', '78.7', '118',]),
                    buildRow(['E36', '34.4(113.1)', '51.7(169.7)',]),
                    buildRow(['E32', '29.4(142.5)', '44.1(213.8)',]),
                    buildRow(['E71', '26.1(168.6)', '39.1(252.9)',]),
                    buildRow(['E15', '22.6(191.2)', '34(286.9)',]),
                    buildRow(['E47', '8.5(199.7)', '12.8(299.7)',]),
                    buildRow(['E74', '2.3(202)', '3.4(303.1)',]),
                    buildRow(['E48', '0.7(202.7)', '1(304.1)',]),
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
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml '], isHeader: true),
                    buildRow(['E10', '39.3', ]),
                    buildRow(['E10', '17.2(56.5)', ]),
                    buildRow(['E10', '14.7(71.2)', ]),
                    buildRow(['E10', '13(84.2)', ]),
                    buildRow(['E10', '11.3(95.5)', ]),
                    buildRow(['E10', '4.3(99.8)', ]),
                    buildRow(['E10', '1.1(100.9)', ]),
                    buildRow(['E10', '0.3(101.2)', ]),
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