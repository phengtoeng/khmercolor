import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_3U5 extends StatefulWidget {
  const Code_3U5({Key? key}) : super(key: key);

  @override
  State<Code_3U5> createState() => _Code_3U5State();
}

class _Code_3U5State extends State<Code_3U5>
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
                  child: Text("ពណ៌នេះត្រូវការ ground coat step 1",
                  style: TextStyle(color: textColor1,
                      fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml',], isHeader: true),
                    buildRow(['E53', '79', '118.5',], isHeader: false),
                    buildRow(['E87', '40', '60.1(178.6)',]),
                    buildRow(['E35', '38.3','57.4(236)',]),
                    buildRow(['E59', '22.5', '33.8(269.8)',]),
                    buildRow(['E41', '14.9', '22.4(292.2)',]),
                    buildRow(['E25', '4.2', '6.4(298.6)',]),
                    buildRow(['E31', '2.1', '3.1(301.7)',]),
                  ],
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("ពណ៌ Top Coat step 2",
                    style: TextStyle(color: textColor1,
                        fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml',], isHeader: true),
                    buildRow(['E60', '112.8', '169.1',], isHeader: false),
                    buildRow(['E59', '75.2(188)', '112.8(281.9)',]),
                    buildRow(['E102', '7.5(195.5)','11.3(293.2)',]),
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
                  child: Text("ពណ៌នេះត្រូវការ ground coat step 1",
                    style: TextStyle(color: textColor1,
                        fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml ',], isHeader: true),
                    buildRow(['E53', '39.5', ], isHeader: false),
                    buildRow(['E87', '20(59.5)',]),
                    buildRow(['E35', '19.1(78.6)',]),
                    buildRow(['E59', '11.3(89.9)', ]),
                    buildRow(['E41', '7.5(97.4)', ]),
                    buildRow(['E25', '2.1(99.5)',]),
                    buildRow(['E31', '1(100.5)',]),
                  ],
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("ពណ៌ Top Coat step 2",
                    style: TextStyle(color: textColor1,
                        fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml',], isHeader: true),
                    buildRow(['E60', '56.4',], isHeader: false),
                    buildRow(['E59', '37.6(94)']),
                    buildRow(['E102', '3.8(97.8)']),
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
