import 'package:flutter/material.dart';
import 'package:khmerautocolor/screen/car_screen/car_dashboard.dart';
import 'package:khmerautocolor/color/color.dart';

import '../../../../../modelcode/model_code.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_3R3 extends StatefulWidget {
  const Code_3R3({Key? key}) : super(key: key);

  @override
  State<Code_3R3> createState() => _Code_3R3State();
}

class _Code_3R3State extends State<Code_3R3>
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
    color: Colors.black),
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
                  child: Text("លាយពណ៌តាមគីឡូក្រាម ឬលីត..",
                  style: TextStyle(color: textColor1,
                      fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml',], isHeader: true),
                    buildRow(['E35', '54.5', '81.8',]),
                    buildRow(['E14', '54.3(108.8)', '81.5(163.3)',]),
                    buildRow(['E87', '51.1(159.9)', '76.7(240)',]),
                    buildRow(['E25', '24.8(184.7)', '37.1(277.1)',]),
                    buildRow(['E43', '7.3(192)', '10.9(288)',]),
                    buildRow(['E59', '6.7(198.7)', '10.1(298.1)',]),
                    buildRow(['E98', '2.8(201.5)', '4.2(302.3)',]),
                    buildRow(['E10', '1.1(202.6)', '1.7(304)',]),
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
                    buildRow(['កូដពណ៌', 'ចំនួន 100ml '], isHeader: true),
                    buildRow(['E35','27.3']),
                    buildRow(['E14','27.2(54.5)' ]),
                    buildRow(['E87','25.6(80.1)' ]),
                    buildRow(['E25','12.4(92.5)']),
                    buildRow(['E43','3.6(96.1)']),
                    buildRow(['E59','3.4(99.5)']),
                    buildRow(['E98','1.4(100.9)']),
                    buildRow(['E10','0.6(101.5)']),
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


