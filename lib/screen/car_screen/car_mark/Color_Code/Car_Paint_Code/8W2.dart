import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';

const indicatorColor = Color(0x98212121);


class Code_8W2 extends StatefulWidget {
  const Code_8W2({Key? key}) : super(key: key);

  @override
  State<Code_8W2> createState() => _Code_8W2State();
}

class _Code_8W2State extends State<Code_8W2>
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
                  style: TextStyle(color: textColor3,
                      fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌','ចំនួន 200ml ','ចំនួន 300'], isHeader: true),
                    buildRow(['E31','104.2','156.2']),
                    buildRow(['E03','44.9(149.1)','67.3(223.5)']),
                    buildRow(['E20','21.2(170.3)','31.7(255.2)']),
                    buildRow(['E22','18.7(189)','28(283.2)']),
                    buildRow(['E10','18.2(207.2)','27.3(310.5)']),
                  ],
                ),
                color: carColor11,
               // height: 200,
              ),

            ],
          ),
          ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("លាយពណ៌ដាក់ក្នុងកំប៉ុង",
                    style: TextStyle(color: textColor1,
                        fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml '], isHeader: true),
                    buildRow(['E31', '52.1',], isHeader: false),
                    buildRow(['E03', '22.4(74.5)']),
                    buildRow(['E20', '10.6(85.1)']),
                    buildRow(['E22', '9.3(94.4)']),
                    buildRow(['E10', '9.1(103.5)']),
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
