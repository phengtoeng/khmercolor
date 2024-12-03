import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';


const textColor = Color(0xfffdfdfc);
const indicatorColor = Color(0x98212121);


class Code_6T3 extends StatefulWidget {
  const Code_6T3({Key? key}) : super(key: key);

  @override
  State<Code_6T3> createState() => _Code_6T3State();
}

class _Code_6T3State extends State<Code_6T3>
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
                    buildRow(['E42','53.3','89']),
                    buildRow(['E10','76.7(136)','115.1(204.1)']),
                    buildRow(['E47','18.6(154.6)','27.9(232)']),
                    buildRow(['E45','30(184.6)','45(277)']),
                    buildRow(['E02','10.9(195.5)','16.4(293.4)']),
                    buildRow(['E59','7.7(203.2)','11.6(305)']),
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
                      buildRow(['E42', '29.7']),
                      buildRow(['E10', '38.4(68.1)']),
                      buildRow(['E47', '9.3(77.4)']),
                      buildRow(['E45', '15(92.4)']),
                      buildRow(['E02', '5.5(97.9)']),
                      buildRow(['E59', '3.9(101.8)']),
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
