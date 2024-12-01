import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0xffFFD93D);


class camry_2007_color_black extends StatefulWidget {
  const camry_2007_color_black({Key? key}) : super(key: key);

  @override
  State<camry_2007_color_black> createState() => _camry_2007_color_blackState();
}

class _camry_2007_color_blackState extends State<camry_2007_color_black>
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
                  child: Text("លាយពណ៌ស្តង់ដារដូចគ្នាពណ៌ដើម OEM ",
                  style: TextStyle(color: textColor,
                      fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml',], isHeader: true),
                    buildRow(['E19', '200', '300',], isHeader: false),

                  ],
                ),
              ),
              // Container(
              //   height: 150,
              //   width: 150,
              //
              //   child: Image.asset('lib/images/camry_2007_black.png'),
              // ),
            ],
          ),
          ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("លាយពណ៌ដាក់ក្នុងកំប៉ុងបាញ់..",
                    style: TextStyle(color: textColor,
                        fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 5,right: 5),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml '], isHeader: true),
                    buildRow(['E19', '100', ], isHeader: false),
                  ],
                ),
              ),
              // Container(
              //   height: 150,
              //   width: 150,
              //
              //   child: Image.asset('lib/images/camry_2007_black.png'),
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
