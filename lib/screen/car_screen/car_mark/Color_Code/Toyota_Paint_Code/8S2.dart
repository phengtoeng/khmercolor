import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);

class Code_8S2 extends StatefulWidget {
  const Code_8S2({Key? key}) : super(key: key);

  @override
  State<Code_8S2> createState() => _Code_8S2State();
}

class _Code_8S2State extends State<Code_8S2>
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
                  child: Text("លាយពណ៌តាមគីឡូក្រាម ឬលីត.2017 up.",
                  style: TextStyle(color: textColor1,
                      fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml'], isHeader: true),
                    buildRow(['E38', '38.1','57.1']),
                    buildRow(['E02', '43.7(81.8)','65.6(122.7)']),
                    buildRow(['E77', '31.4(113.2)','47.1(169.8)']),
                    buildRow(['E57', '32.5(145.7)','48.7(218.5)']),
                    buildRow(['E61', '19.3(165)','29(247.5)']),
                    buildRow(['E82', '20.4(185.4)','30.7(278.2)']),
                    buildRow(['E20', '6.9(192.3)','10.4(288.6)']),
                    buildRow(['E592', '8.8(201.1)','13.2(301.8)']),
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
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml '], isHeader: true),
                    buildRow(['E38', '19']),
                    buildRow(['E02', '21.9(40.9)']),
                    buildRow(['E77', '15.7(56.6)']),
                    buildRow(['E57', '16.2(72.8)' ]),
                    buildRow(['E61', '9.7(82.5)']),
                    buildRow(['E82', '10.2(92.7)' ]),
                    buildRow(['E20', '3.5(96.2)']),
                    buildRow(['E59', '4.4(100.6)' ]),
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
