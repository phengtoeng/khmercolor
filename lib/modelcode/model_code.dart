import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';

class CodeModel extends StatefulWidget {
  const CodeModel({
    Key? key,
    required this.controller,
    this.mixTopCode1,
    this.mixToCan,
  }) : super(key: key);

  final TabController controller;
  final mixTopCode1;
  final mixToCan;

  @override
  State<CodeModel> createState() => _CodeModelState();
}

class _CodeModelState extends State<CodeModel> {
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
                  child: Text(
                    "លាយពណ៌តាមគីឡូក្រាម ឬលីត..",
                    style: TextStyle(
                        color: textColor1,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Container(
                child: Table(border: TableBorder.all(), children: widget.mixTopCode1),
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
                  child: Text(
                    "លាយពណ៌ដាក់ក្នុងកំប៉ុង",
                    style: TextStyle(
                        color: textColor1,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Container(
                child: Table(border: TableBorder.all(), children: widget.mixToCan
                    //],
                    ),
              ),
              // const Center(
              //   child: Text("<<<<<ណែនាំពីផ្សេងទៀត>>>>> ",
              //     style: TextStyle(color: textColor1,
              //         fontSize: 20,fontWeight: FontWeight.normal),),
              // ),
              // Container(
              //   child: Table(
              //     border: TableBorder.all(),
              //     children: [
              //       buildRow(['កូដពណ៌', 'ចំនួន 100ml '], isHeader: true),
              //       buildRow(['E13', '38.4',]),
              //       buildRow(['E22', '20.1(58.5)']),
              //       buildRow(['E87', '13.1(71.6)']),
              //       buildRow(['E86', '11.9(83.5)']),
              //       buildRow(['E24', '10.8(94.3)']),
              //       buildRow(['E37', '4.3(98.6)']),
              //       buildRow(['E83', '1.2(99.8)']),
              //     ],
              //   ),
              // ),
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
