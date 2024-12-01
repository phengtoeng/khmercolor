import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';

const carColor = Color(0xff730a19);
const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_1G3 extends StatefulWidget {
  const Code_1G3({Key? key}) : super(key: key);

  @override
  State<Code_1G3> createState() => _Code_1G3State();
}

class _Code_1G3State extends State<Code_1G3>
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
                      buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml','ចំនួន 500ml'], isHeader: true),
                      buildRow(['E37', '87.5', '131.2','281.6'], isHeader: false),
                      buildRow(['E74', '71.6(159)','107.4(238.5)','178.9(397.5)']),
                      buildRow(['E02', '9.6(168.7)', '14.3(252.9)','23.9(421.4)']),
                      buildRow(['E98', '7.2(175.9)', '10.8(263.7)','17.9(439.3)']),
                      buildRow(['E34', '5.5(181.4)', '8.3(272.0)','13.9(453.2)']),
                      buildRow(['E90', '4.8(186.2)', '7.2(279.2)','11.9(465.1)']),
                      buildRow(['E25', '4.6(190.8)', '6.9(286.1)','11.5(476.6)']),
                      buildRow(['E11', '4.5(195.3)', '6.7(292.8)','11.1(487.7)']),
                      buildRow(['E78', '3.2(198.5)', '4.8(297.6)','8(495.7)']),
                      buildRow(['E07', '0.2(198.7)', '0.2(297.8)','0.4(496.1)']),
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
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ', ], isHeader: true),
                    buildRow(['E37', '87.5',], isHeader: false),
                    buildRow(['E74', '71.6(159.1)',]),
                    buildRow(['E02', '9.6(168.7)']),
                    buildRow(['E98', '7.2(175.9)']),
                    buildRow(['E34', '5.5(181.4)']),
                    buildRow(['E90', '4.8(186.2)']),
                    buildRow(['E25', '4.6(190.8)']),
                    buildRow(['E11', '4.5(195.3)']),
                    buildRow(['E78', '3.2(198.5)']),
                    buildRow(['E07', '0.2(198.7)']),
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
