import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0xffFFD93D);


class camry_2017_color_black extends StatefulWidget {
  const camry_2017_color_black({Key? key}) : super(key: key);

  @override
  State<camry_2017_color_black> createState() => _camry_2017_color_blackState();
}

class _camry_2017_color_blackState extends State<camry_2017_color_black>
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
      backgroundColor: carColor4,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: carColor4,
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
                  child: Text("Option 1 លាយពណ៌ស្តង់ដារដូចគ្នាពណ៌ដើម",
                  style: TextStyle(color: textColor,
                      fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 300ml ', 'ចំនួន 500ml',], isHeader: true),
                    buildRow(['E37', '239.2', '398.6',]),
                    buildRow(['E59', '25.1(264.3)', '41.9(440.5)',]),
                    buildRow(['E15', '15.1(279.4)', '25.2(465.7)',]),
                    buildRow(['E45', '11.2(290.6)', '18.6(484.3)',]),
                    buildRow(['E92', '5.5(296.1)', '9.2(493.5)',]),
                    buildRow(['E74', '0.9(297)', '1.5(495)',]),
                  ],
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Option 2 ពណ៌ខ្មៅជាង",
                    style: TextStyle(color: textColor,
                        fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 300ml ', 'ចំនួន 500ml',], isHeader: true),
                    buildRow(['E29', '222.7', '371.1',]),
                    buildRow(['E45', '34.7(257.4)', '57.8(428.9)',]),
                    buildRow(['E99', '14.9(272.3)', '24.8(453.7)',]),
                    buildRow(['E02', '14.9(287.2)', '24.8(478.5)',]),
                    buildRow(['E31', '6.4(293.6)', '10.7(489.2)',]),
                    buildRow(['E74', '1.5(295.1)', '2.4(491.6)',]),
                  ],
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Option 3 ពណ៌ខ្មៅ ប៉ុន្តែមានពណ៌ខៀវជាង",
                    style: TextStyle(color: textColor,
                        fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 300ml ', 'ចំនួន 500ml',], isHeader: true),
                    buildRow(['E10','232.5','387.6']),
                    buildRow(['E10','27.3(259.8)','45.5(433.1)']),
                    buildRow(['E10','21.4(281.2)','35.7(468.8)']),
                    buildRow(['E10','15.2(296.4)','25.3(494.1)']),
                    buildRow(['E10','7.3(303.7)','12.2(506.3)']),

                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,

                child: Image.asset('lib/images/toyota/camry/camry_2017_black.png'),
              ),
            ],
          ),
          ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("លាយពណ៌ដាក់ក្នុងកំប៉ុងបាញ់.OPTION1.",
                    style: TextStyle(color: textColor,
                        fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 5,right: 5),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 300ml '], isHeader: true),
                    buildRow(['E37', '79.7', ]),
                    buildRow(['E59', '8.4(88.1)']),
                    buildRow(['E15', '5(93.1)', ]),
                    buildRow(['E45', '3.7(96.8)',]),
                    buildRow(['E92', '1.8(98.6)']),
                    buildRow(['E74', '0.3(98.9)']),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,

                child: Image.asset('lib/images/toyota/camry/camry_2017_black.png'),
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
