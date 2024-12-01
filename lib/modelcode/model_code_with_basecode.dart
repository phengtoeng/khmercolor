

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';



class CodeModelWithBaseCode extends StatefulWidget {

  final TabController controller;
  final mixBaseCode;
  final mixToCan;
  final mixTopCode1;

   CodeModelWithBaseCode({
     required this.controller,
     this.mixToCan,
     this.mixBaseCode,
     this.mixTopCode1,

  });


  @override
  State<CodeModelWithBaseCode> createState() => _CodeModelWithBaseCodeState();
}


class _CodeModelWithBaseCodeState extends State<CodeModelWithBaseCode> {
  var mixTopCode1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: carColor3,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
          color: indicatorColor1,
        ),
        toolbarHeight: 80,
        backgroundColor: carColor3,
        bottom: TabBar(
          indicatorColor: indicatorColor1,
          indicatorWeight: 2.0,
          controller: widget.controller,
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
        controller: widget.controller,
        children: [
          ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Step 1 លាយ BaseCode .",
                    style: TextStyle(color: textColor1,
                        fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                    border: TableBorder.all(),
                    children: widget.mixBaseCode
                ),
                color: carColor11,
                // height: 200,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Step2 លាយពណ៌ TopCode",
                    style: TextStyle(color: textColor1,
                        fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: widget.mixTopCode1
                ),
                color: carColor11,
                // height: 200,
              ),

            ],
          ),
          ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("លាយពណ៌ដាក់ក្នុងកំប៉ុង",
                    style: TextStyle(color: textColor1,
                        fontSize: 20,fontWeight: FontWeight.normal),),
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: widget.mixToCan
                  //],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
/// for table row

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

abstract class makeDismissible1 extends StatelessWidget {
  late BuildContext context;
  @override
  Widget makeDismissible({required Widget child}) => GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () => Navigator.of(context).pop(),
    child: GestureDetector(
      onTap: () {},
      child: child,
    ),
  );
  }

