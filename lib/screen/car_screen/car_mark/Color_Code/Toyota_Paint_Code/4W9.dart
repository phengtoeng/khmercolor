import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = textColor1;
const indicatorColor = Color(0x98212121);


class Code_4W9 extends StatefulWidget {
  const Code_4W9({Key? key}) : super(key: key);

  @override
  State<Code_4W9> createState() => _Code_4W9State();
}

class _Code_4W9State extends State<Code_4W9>
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
      backgroundColor: carColor26,
      appBar: AppBar(leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
        color: indicatorColor,
      ),
        toolbarHeight: 80,
        backgroundColor:  carColor26,
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
                    buildRow(['E37', '139.5', '209.3','348.9']),
                    buildRow(['E13', '16.8(156.3)', '25.2(234.5)','42.1(391)']),
                    buildRow(['E43', '16.7(173)', '25(259.5)','41.7(432.7)']),
                    buildRow(['E59', '13.8(186.8)', '20.6(280.1)','34.4(467.1)']),
                    buildRow(['E74', '8.5(195.3)', '12.8(292.9)','21.3(488.4)']),
                    buildRow(['E44', '2.6(197.9)', '3.8(296.7)','6.4(494.8)']),
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
                    buildRow(['E37', '69.8', ], isHeader: false),
                    buildRow(['E13', '8.4(78.2)',]),
                    buildRow(['E43', '8.3(86.5)']),
                    buildRow(['E59', '6.9(93.4)', ]),
                    buildRow(['E74', '4.3(97.7)',]),
                    buildRow(['E44', '1.3(99a)',]),

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
