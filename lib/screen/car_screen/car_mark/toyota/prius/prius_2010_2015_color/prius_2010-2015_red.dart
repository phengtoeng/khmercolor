import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0xffFFD93D);


class prius_2010_2015_color_red extends StatefulWidget {
  const prius_2010_2015_color_red({Key? key}) : super(key: key);

  @override
  State<prius_2010_2015_color_red> createState() => _prius_2010_2015_color_redState();
}

class _prius_2010_2015_color_redState extends State<prius_2010_2015_color_red>
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
      backgroundColor: carColor7,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: carColor7,
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
                  style: TextStyle(color: textColor,
                      fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 20ml ', 'ចំនួន 30ml','ចំនួន 1 លីត្រ'], isHeader: true),
                    buildRow(['-', '-', '-','-'], isHeader: false),
                    buildRow(['-', '-', '-','-']),
                    buildRow(['-', '-', '-','-']),
                    buildRow(['-', '-', '-','-']),
                    buildRow(['-', '-', '-','-']),
                  ],
                ),
              ),
              const Center(
                child: Text("ពណ៌ដែលអាចបន្ថែមបាន",
                  style: TextStyle(color: textColor,
                      fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 20ml ', 'ចំនួន 30ml','ចំនួន 1 លីត្រ'], isHeader: true),
                    buildRow(['-', '-', '-','-'], isHeader: false),
                    buildRow(['-', '-', '-','-']),
                    buildRow(['-', '-', '-','-']),
                    buildRow(['-', '-', '-','-']),
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
                    style: TextStyle(color: textColor,
                        fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 300ml ', 'ចំនួន 400ml'], isHeader: true),
                    buildRow(['cell', 'cell2', 'cell3',], isHeader: false),
                    buildRow(['cell', 'cell2', 'cell3',]),
                    buildRow(['cell', 'cell2', 'cell3',]),
                  ],
                ),
              ),
              const Center(
                child: Text("ពណ៌ដែលអាចបន្ថែមបាន",
                  style: TextStyle(color: textColor,
                      fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 300ml ', 'ចំនួន 400ml'], isHeader: true),
                    buildRow(['cell', 'cell2', 'cell3',], isHeader: false),
                    buildRow(['cell', 'cell2', 'cell3',]),
                    buildRow(['cell', 'cell2', 'cell3',]),
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
