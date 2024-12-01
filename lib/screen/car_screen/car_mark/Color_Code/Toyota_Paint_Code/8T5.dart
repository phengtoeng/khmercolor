import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = textColor1;
const indicatorColor = Color(0x98212121);


class Code_8T5 extends StatefulWidget {
  const Code_8T5({Key? key}) : super(key: key);

  @override
  State<Code_8T5> createState() => _Code_8T5State();
}

class _Code_8T5State extends State<Code_8T5>
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
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml','ចំនួន 300ml'], isHeader: true),
                    buildRow(['E92', '54.9', '82.4']),
                    buildRow(['E02', '65.9(120.9)', '98.8(181.2)']),
                    buildRow(['E10', '18.9(139.7)', '28.3(209.5)']),
                    buildRow(['E34', '21.1(160.8)', '31.6(241.1)']),
                    buildRow(['E16', '11.4(172.2)', '17.1(258.2)']),
                    buildRow(['E45', '19.3(191.5)', '29(287.2)']),
                    buildRow(['E12', '6.5(198)', '9.7(296.9)']),
                    buildRow(['E59', '2.9(200.9)', '4.4(301.3)']),
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
                    buildRow(['E92', '27.5'], isHeader: false),
                    buildRow(['E02', '32.9']),
                    buildRow(['E10', '9.4']),
                    buildRow(['E34', '10.5']),
                    buildRow(['E16', '5.7',]),
                    buildRow(['E45', '9.7']),
                    buildRow(['E12', '3.2']),
                    buildRow(['E59', '1.5']),
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
