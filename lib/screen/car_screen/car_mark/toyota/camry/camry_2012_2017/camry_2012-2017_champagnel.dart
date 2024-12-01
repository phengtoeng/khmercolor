import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0xffFFD93D);


class camry_2017_color_champagne extends StatefulWidget {
  const camry_2017_color_champagne({Key? key}) : super(key: key);

  @override
  State<camry_2017_color_champagne> createState() => _camry_2017_color_champagneState();
}

class _camry_2017_color_champagneState extends State<camry_2017_color_champagne>
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
      backgroundColor: carColor40,
      appBar: AppBar(
        leading: IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: Icon(Icons.arrow_back),
          color: Colors.black87,
        ),
        toolbarHeight: 80,
        backgroundColor: carColor40,
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
                  child: Text("Option1 លាយពណ៌ស្តង់ដារដូចគ្នាពណ៌ដើម",
                    style: TextStyle(color: textColor1,
                        fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 300ml ', 'ចំនួន 500ml',], isHeader: true),
                    buildRow(['E35', '81.8 ', '136.3',]),
                    buildRow(['E14', '81.5(163.3) ', '135.8(272.1)',]),
                    buildRow(['E87', '76.7(240)', '127.9(400)',]),
                    buildRow(['E25', '37.1(277.1)', '61.9(461.9)',]),
                    buildRow(['E43', '10.9(288)', '18.2(480.1)',]),
                    buildRow(['E59', '10.1(298.1)', '16.8(496.9)',]),
                    buildRow(['E98', '4.2(302.3)', '6.9(503.8)',]),
                    buildRow(['E10', '1.7(304)', '2.8(506.6)',]),

                  ],
                ),
              ),
              const Center(
                child: Text("Option 2 សម្រាប់ឡានចាស់ ពណ៌លឿងបន្តិច",
                  style: TextStyle(color: textColor1,
                      fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 300ml ', 'ចំនួន 500ml',], isHeader: true),
                    buildRow(['E35', '112.9 ', '188.1',]),
                    buildRow(['E87', '82.7(195.6) ', '137.8(325.9)',]),
                    buildRow(['E14', '67.7(263.3)', '112.8(438.7)',]),
                    buildRow(['E04', '28.5(291.8)', '47.4(486.1)',]),
                    buildRow(['E13', '11.1(302.9)', '18.5(504.6)',]),
                    buildRow(['E10', '1.2(304.1)', '2(506.6)',]),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                child: Image.asset('lib/images/toyota/camry/camry_2017_pearl.png'),
              ),
              // Container(
              //   height: 150,
              //   width: 150,
              //   child: Image.asset('lib/images/camry_2007_white.png'),
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
                    buildRow(['E35','27.3'],),
                    buildRow(['E14','27.2(54.5)']),
                    buildRow(['E87','25.6(80.1)']),
                    buildRow(['E25','12.4(92.5)']),
                    buildRow(['E43','3.6(96.1)']),
                    buildRow(['E59','3.4(99.5)']),
                    buildRow(['E98','1.4(100.9)']),
                    buildRow(['E10','0.6(101.5)']),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                child: Image.asset('lib/images/toyota/camry/camry_2017_pearl.png'),
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
