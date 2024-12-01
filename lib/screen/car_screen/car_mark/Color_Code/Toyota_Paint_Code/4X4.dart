import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = textColor1;
const indicatorColor = Color(0x98212121);

class Code_4X4 extends StatefulWidget {
  const Code_4X4({Key? key}) : super(key: key);

  @override
  State<Code_4X4> createState() => _Code_4X4State();
}

class _Code_4X4State extends State<Code_4X4>
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
                    buildRow(['E48', '56.9', '85.3','142.1'],),
                    buildRow(['E10', '103.6(160.5)','155.5(240.8)','259.1(401.2)']),
                    buildRow(['E93', '10.4(170.9)', '15.5(256.3)','25.9(427.1)']),
                    buildRow(['E02', '19.4(190.3)','29.2(285.5)','48.6(475.7)']),
                    buildRow(['E59', '9.1(199.4)', '13.7(299.2)','22.8(498.5)']),
                    buildRow(['E44', '3.2(202.6)', '4.9(304)','7.9(506.4)']),
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
                    buildRow(['E48', '28.4', ], isHeader: false),
                    buildRow(['E10', '51.8(80.2)',]),
                    buildRow(['E93', '5.2(85.4)']),
                    buildRow(['E02', '9.7(95.1)', ]),
                    buildRow(['E59', '4.6(99.7)',]),
                    buildRow(['E44', '1.6(101.3)',]),
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
