import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_8W7 extends StatefulWidget {
  const Code_8W7({Key? key}) : super(key: key);

  @override
  State<Code_8W7> createState() => _Code_8W7State();
}

class _Code_8W7State extends State<Code_8W7>
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

      backgroundColor: carColor38,
      appBar: AppBar(
        leading: IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        toolbarHeight: 80,
        backgroundColor: carColor38,
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
                  child: Text("Mix Color",
                  style: TextStyle(color: textColor3,
                      fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml ','ចំនួន 300ml','ចំនួន 500ml'], isHeader: true),
                    buildRow(['E98','40.5','60.8','101.3']),
                    buildRow(['E03','72.1(112.6)','108.1(168.9)','180.2(281.5)']),
                    buildRow(['E25','23.9(136.5)','35.8(204.7)','59.7(341.2)']),
                    buildRow(['E45','26.2(162.7)','39.3(244)','65.4(406.6)']),
                    buildRow(['E10','9.1(171.8)','13.7(257.7)','22.8(429.4)']),
                    buildRow(['E59','16.6(188.4)','24.9(282.6)','41.5(470.9)']),
                    buildRow(['E34','9.4(197.8)','14.2(296.8)','23.6(494.5)']),
                    buildRow(['E68','2.8(200.6)','4.2(301)','7.1(501.6)']),

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
                        fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5,right: 5),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន100ml'], isHeader: true),
                    buildRow(['E98','20.3']),
                    buildRow(['E03','36(56.3)']),
                    buildRow(['E25','11.9(68.2)']),
                    buildRow(['E45','13.1(81.3)']),
                    buildRow(['E10','4.6(85.9)']),
                    buildRow(['E59','8.3(94.2)']),
                    buildRow(['E34','4.7(98.9)']),
                    buildRow(['E68','1.4(100.3)']),
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
