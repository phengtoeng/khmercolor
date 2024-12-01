import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_8R3 extends StatefulWidget {
  const Code_8R3({Key? key}) : super(key: key);

  @override
  State<Code_8R3> createState() => _Code_8R3State();
}

class _Code_8R3State extends State<Code_8R3>
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
        leading: IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: Icon(Icons.arrow_back),
          color: Colors.black87,
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
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml']),
                    buildRow(['E71','88.9', '133.3 ', ]),
                    buildRow(['E10','47.2(136.1)', '70.7(204) ']),
                    buildRow(['E03','29.6(165.7)', '44.4(248.4) ']),
                    buildRow(['E34','15.2(180.9)', '22.8(271.2)']),
                    buildRow(['E61','8.2(189.1)', '12.3(283.5)']),
                    buildRow(['E72','7.4(196.5)', '11.1(294.6)']),
                    buildRow(['E68','3.1(199.6)', '4.7(299.3)']),
                    buildRow(['E36','0.4(200)', '0.6(299.9)']),

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
                    buildRow(['E71', '44.4']),
                    buildRow(['E10', '23.6(68)']),
                    buildRow(['E03', '14.8(82.8)']),
                    buildRow(['E34', '7.6(90.4)']),
                    buildRow(['E61', '4.1(94.5)']),
                    buildRow(['E72', '3.7(98.2)']),
                    buildRow(['E68', '1.6(99.8)']),
                    buildRow(['E36', '0.2(100)']),
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
