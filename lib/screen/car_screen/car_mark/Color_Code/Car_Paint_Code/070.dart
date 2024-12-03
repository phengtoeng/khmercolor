import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_070 extends StatefulWidget {
  const Code_070({Key? key}) : super(key: key);

  @override
  State<Code_070> createState() => _Code_070State();
}

class _Code_070State extends State<Code_070>
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
                  child: Text("ពណ៌នេះ្រូវការពណ៌ primer ដូច្នេះអាចចេញមកបានល្អ...",
                  style: TextStyle(color: textColor1,
                      fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml','ចំនួន 500ml'], isHeader: true),
                    buildRow(['E42','121.8','182.7','304.4']),
                    buildRow(['E60','67.5(189.3)','101.2(283.9)','168.7(473.1)']),
                    buildRow(['E31','4.4(99)','13.2(297.1)','22(495.1)']),
                    buildRow(['E59','1.5(100.5)','4.6(301.7)','7.6(502.7)']),
                    buildRow(['E41','0.3(100.8)','0.9(302.6)','1.6(504.3)']),

                  ],
                ),
              ),
              const Center(
                child: Text("option 2",
                  style: TextStyle(color: textColor1,
                      fontSize: 20,fontWeight: FontWeight.normal),),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 20ml ', 'ចំនួន 30ml','ចំនួន 1 លីត្រ'], isHeader: true),
                    buildRow(['E29', '148.4', '222.7','371.1'], isHeader: false),
                    buildRow(['E45', '23.1(171.5)', '34.7(257.4)','57.8(428.9)']),
                    buildRow(['E99', '9.9(181.4)', '14.9(272.3)','24.8(453.7)']),
                    buildRow(['E02', '9.9(191.3)', '14.9(287.2)','24.8(470.5)']),
                    buildRow(['E31', '4.3(195.6)', '6.4(293.6)','10.7(489.2)']),
                    buildRow(['E74', '1.0(196.6)', '1.5(295.1)','2.4(491.6)']),
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
                    buildRow(['កូដពណ៌', 'ចំនួន 300ml'], isHeader: true),
                    buildRow(['E42','60.9']),
                    buildRow(['E60','33.7(94.6)']),
                    buildRow(['E31','4.4(99)']),
                    buildRow(['E59','1.5(100.5)']),
                    buildRow(['E41','0.3(100.8)']),
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
