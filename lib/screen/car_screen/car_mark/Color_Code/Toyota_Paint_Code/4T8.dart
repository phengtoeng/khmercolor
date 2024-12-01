import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_4T8 extends StatefulWidget {
  const Code_4T8({Key? key}) : super(key: key);

  @override
  State<Code_4T8> createState() => _Code_4T8State();
}

class _Code_4T8State extends State<Code_4T8>
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
                    buildRow(['កូដពណ៌', 'ចំនួន 20ml ', 'ចំនួន 300ml','ចំនួន 500ml'], isHeader: true),
                    buildRow(['E71','97.7', '146.5','244.2']),
                    buildRow(['E97','41.7','62.6(209.1)','104(348.5)']),
                    buildRow(['E32','41.7', '62.6(271.7)','104(452.8)']),
                    buildRow(['E67', '12.8','19.2(290.9)','32(484.8)']),
                    buildRow(['E12', '3.3','5(295.9)','8.3(493.1)']),
                    buildRow(['E41', '1.4','2.1(298)','3.5(496.6)']),
                    buildRow(['E24', '1.4','2.1(300.1)','3.5(500.1)']),
                    buildRow(['E20', '0.5','0.7(300.8)','1.2(501.3)']),
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
                    buildRow(['E71', '48.8'], isHeader: false),
                    buildRow(['E97', '20.9']),
                    buildRow(['E32', '20.9']),
                    buildRow(['E67', '6.4']),
                    buildRow(['E12', '1.7']),
                    buildRow(['E41', '0.7']),
                    buildRow(['E24', '0.7']),
                    buildRow(['E20', '0.2']),
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
