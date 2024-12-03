import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_4W4 extends StatefulWidget {
  const Code_4W4({Key? key}) : super(key: key);

  @override
  State<Code_4W4> createState() => _Code_4W4State();
}

class _Code_4W4State extends State<Code_4W4>
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

      backgroundColor: carColor35,
      appBar: AppBar(
        leading: IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: Icon(Icons.arrow_back),
          color: Colors.black87,
        ),
        toolbarHeight: 80,
        backgroundColor: carColor35,
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
                  child: Text("ឆ្នាំ 2017 ឡើងទៅ."
                      "ពណ៌នេះ្រូវការពណ៌ Ground Coat ដូច្នេះអាចចេញមកបានល្អ.",
                     // "Step1 : Spay Ground Coat Color",
                  style: TextStyle(color: textColor,
                      fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Step1 : Spay Ground Coat Color",
                    style: TextStyle(color: textColor,
                        fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['កូដពណ៌', 'ចំនួន 200ml ','ចំនួន 300ml'], isHeader: true),
                    buildRow(['E71','48.8','73.3']),
                    buildRow(['E10','53.9(102.7)','80.9(154.2)']),
                    buildRow(['E74','24.9(127.6)','37.4(191.6)']),
                    buildRow(['E88','34.2(161.8)','51.4(243)']),
                    buildRow(['E17','10.1(171.9)','15.1(258.1)']),
                    buildRow(['E34','14.5(186.4)','21.7(279.8)']),
                    buildRow(['E59','8.9(195.3)','13.3(293.1)']),
                    buildRow(['E61','6.1(201.4)','9.2(302.3)']),
                  ],
                ),
              ),

              Container(
                height: 150,
                width: 150,
                child: Image.asset('lib/images/toyota/prius/prius_2016_2021_hypersonic_red.png',)
              )
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
                    buildRow(['E71','24.4']),
                    buildRow(['E10','27(51.4)']),
                    buildRow(['E74','12.5(63.9)']),
                    buildRow(['E88','17.1(81)']),
                    buildRow(['E17','5(86)']),
                    buildRow(['E34','7.2(93.2)']),
                    buildRow(['E59','4.4(97.6)']),
                    buildRow(['E61','3.1(100.7)']),
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
