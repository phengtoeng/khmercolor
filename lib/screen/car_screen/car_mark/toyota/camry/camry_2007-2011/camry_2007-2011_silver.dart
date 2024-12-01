import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0xffFFD93D);


class camry_2007_2011_silver extends StatefulWidget {
  const camry_2007_2011_silver({Key? key}) : super(key: key);

  @override
  State<camry_2007_2011_silver> createState() => _camry_2007_2011_silverState();
}

class _camry_2007_2011_silverState extends State<camry_2007_2011_silver>
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
      backgroundColor: carColor23,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: carColor23,
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
                  child: Text("ពណ៌ស្តង់ដារ OEM COLOR .",
                    style: TextStyle(color: textColor1,
                        fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml','ចំនួន500ml'], isHeader: true),
                    buildRow(['E71', '140.3', '210.4','350.7'], isHeader: false),
                    buildRow(['E69', '48.5(188.8)', '72.8(283.2)','121.3(472)']),
                    buildRow(['E59', '4.5(193.3)', '6.8(290)','11.4(483.4)']),
                    buildRow(['E10', '2.6(195.9)', '3.9(293.9)','6.5(489.9)']),
                    buildRow(['E61', '1.4(197.3)', '2.1(296)','3.5(493.4)']),
                    buildRow(['E31', '0.6(197.9)', '0.9(296.9)','1.4(494.8)']),
                    buildRow(['E30', '0.4(198.3)', '0.6(297.5)','0.9(495.7)']),
                    buildRow(['E02', '0.3(198.6)', '0.5(298)','0.8(496.5)']),
                  ],
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("ពណ៌ប្រាក់ប៉ុន្តែខ្មៅជាងបន្តិច",
                    style: TextStyle(color: textColor1,
                        fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml','ចំនួន500ml'], isHeader: true),
                    buildRow(['E66','180.3','270.4','450.7' ],),
                    buildRow(['E59','12(192.3)','18(288.4)','30.1(480.8)' ],),
                    buildRow(['E41','4.2(196.5)','6.3(294.7)','10.5(491.3)' ],),
                  ],
                ),
              ),
              // Container(
              //   height: 150,
              //   width: 150,
              //   child: Image.asset('lib/images/camry_2007_silver.png'),
              // ),

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
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml'], isHeader: true),
                    buildRow(['E71', '140.3'], isHeader: false),
                    buildRow(['E69', '48.5(188.8)']),
                    buildRow(['E59', '4.5(193.3)']),
                    buildRow(['E10', '2.6(195.9)']),
                    buildRow(['E61', '1.4(197.3)']),
                    buildRow(['E31', '0.6(197.9)']),
                    buildRow(['E30', '0.4(198.3)']),
                    buildRow(['E02', '0.3(198.6)']),
                  ],
                ),
              ),
              // Container(
              //   height: 150,
              //   width: 150,
              //   child: Image.asset('lib/images/camry_2007_silver.png'),
              // ),

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
