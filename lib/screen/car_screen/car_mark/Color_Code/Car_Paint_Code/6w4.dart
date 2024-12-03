import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_6W4 extends StatefulWidget {
  const Code_6W4({Key? key}) : super(key: key);

  @override
  State<Code_6W4> createState() => _Code_6W4State();
}

class _Code_6W4State extends State<Code_6W4>
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
      appBar: AppBar(
        leading: IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: Icon(Icons.arrow_back),
          color: Colors.black87,
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
                  child: Text(
                    " លាយពណ៌តាមគីឡូក្រាម ឬលីត..",
                    style: TextStyle(color: textColor1,
                        fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ','ចំនួន 300ml'], isHeader: true),
                    buildRow(['E74','77.2','115.8']),
                    buildRow(['E10','57.6','86.4(202.2)']),
                    buildRow(['E32','36.2','54.2(256.4)']),
                    buildRow(['E71','8.6','12.9(269.3)']),
                    buildRow(['E21','7.2','10.7(280)']),
                    buildRow(['E03','7.1','10.7(290.7)']),
                    buildRow(['E59','7','10.5(301.2)']),
                  ],
                ),
              ),
              // Container(
              //   height: 150,
              //   width: 150,
              //   child: Image.asset('lib/images/toyota/prius/prius_2016_2021_hypersonic_red.png',)
              // )
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
                    buildRow(['E74', '38.6', ]),
                    buildRow(['E10', '28.8(67.4)', ]),
                    buildRow(['E32', '18.1(85.5)', ]),
                    buildRow(['E71', '4.3(89.8)', ]),
                    buildRow(['E21', '3.6(93.4)', ]),
                    buildRow(['E03', '3.6(97)', ]),
                    buildRow(['E59', '3.5(100.5)', ]),
                  ],
                ),
              ),
            ],
    ),

            ],
    )
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
