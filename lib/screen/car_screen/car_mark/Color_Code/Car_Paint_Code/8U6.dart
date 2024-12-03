import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';

const carColor = Color(0xff730a19);
const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);

class Code_8U6 extends StatefulWidget {
  const Code_8U6({Key? key}) : super(key: key);

  @override
  State<Code_8U6> createState() => _Code_8U6State();
}

class _Code_8U6State extends State<Code_8U6>
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
                margin: EdgeInsets.fromLTRB(2, 2, 2 ,2),
                child: Expanded(
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml'], isHeader: true),
                      buildRow(['E69', '63.2', '94.8']),
                      buildRow(['E02', '42.4(105.6)','63.7(158.5)']),
                      buildRow(['E10', '35.2(140.8)','52.9(211.4)']),
                      buildRow(['E71', '15.7(156.5)','23.5(234.9)']),
                      buildRow(['E91', '14.2(170.7)','21.4(256.3)']),
                      buildRow(['E34', '12.7(183.4)','19.1(275.4)']),
                      buildRow(['E16', '11.7(195.1)','17.5(292.9)']),
                      buildRow(['E59', '4.7(199.8)','7(299.9)']),
                    ],
                  ),
                ),
              ),

            ],
          ),
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
                margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml ', ], isHeader: true),
                    buildRow(['E69', '31.6',]),
                    buildRow(['E02', '21.2(52.8)']),
                    buildRow(['E10', '17.6(70.4)']),
                    buildRow(['E71', '7.8(78.2)']),
                    buildRow(['E91', '7.1(85.3)']),
                    buildRow(['E34', '6.4(91.7)']),
                    buildRow(['E16', '5.8(97.5)']),
                    buildRow(['E59', '2.3(99.8)']),
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
