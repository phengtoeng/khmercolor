import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_8X7 extends StatefulWidget {
  const Code_8X7({Key? key}) : super(key: key);

  @override
  State<Code_8X7> createState() => _Code_8X7State();
}

class _Code_8X7State extends State<Code_8X7>
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
                  style: TextStyle(color: textColor1,
                      fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml ','ចំនួន 300ml'], isHeader: true),
                    buildRow(['E02','122.3','183.4']),
                    buildRow(['E71','36.7(159)','55.1(238.5)']),
                    buildRow(['E74','23.4(182.4)','35.1(273.6)']),
                    buildRow(['E59','11.1(193.5)','16.6(290.2)']),
                    buildRow(['E22','4(197.5)','5.9(296.1)']),
                    buildRow(['E51','0.5(198)','0.7(296.8)']),
                    buildRow(['E31','0.3(198.3)','0.4(297.2)']),
                    buildRow(['E10','0.2(198.5)','0.3(297.5)']),
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
                    buildRow(['កូដពណ៌', 'ចំនួន100ml'], isHeader: true),
                    buildRow(['E02','61.1']),
                    buildRow(['E71','18.4']),
                    buildRow(['E74','11.7']),
                    buildRow(['E59','5.5']),
                    buildRow(['E22','2(98.7)']),
                    buildRow(['E51','0.2(98.7)']),
                    buildRow(['E31','0.1(99)']),
                    buildRow(['E10','0.1(99.1)']),
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
