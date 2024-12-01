import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';
import 'package:khmerautocolor/modelcode/model_code2.dart';


const textColor = textColor3;
const indicatorColor = indicatorColor1;

class Code_218 extends StatefulWidget {
  const Code_218({Key? key}) : super(key: key);

  @override
  State<Code_218> createState() => _Code_218State();
}

class _Code_218State extends State<Code_218>
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
    return CodeModel2(controller: controller,
      mixTopCode1: [
        buildRow(['កូដពណ៌', 'ចំនួន 200ml ', 'ចំនួន 300ml', 'ចំនួន 500 ML'],
            isHeader: true),
        buildRow(['E37', '159.5', '239.2', '298.6']),
        buildRow(['E59', '16.8(176.3)', '25.1(264.3)', '41.9(440.5)']),
        buildRow(['E15', '10.1(186.4)', '15.1(279.4)', '25.2(465.7)']),
        buildRow(['E45', '7.4(193.8)', '11.2(290.6)', '18.6(484.3)']),
        buildRow(['E92', '3.7(197.5)', '5.5(296.1)', '9.2(493.5)']),
        buildRow(['E74', '0.6(198.1)', '0.9(297)', '1.5(495)']),
      ],
      mixTopCode2: [
        buildRow(['កូដពណ៌', 'ចំនួន 20ml ', 'ចំនួន 30ml', 'ចំនួន 1 លីត្រ'],
            isHeader: true),
        buildRow(['E29', '148.4', '222.7', '371.1']),
        buildRow(['E45', '23.1(171.5)', '34.7(257.4)', '57.8(428.9)']),
        buildRow(['E99', '9.9(181.4)', '14.9(272.3)', '24.8(453.7)']),
        buildRow(['E02', '9.9(191.3)', '14.9(287.2)', '24.8(470.5)']),
        buildRow(['E31', '4.3(195.6)', '6.4(293.6)', '10.7(489.2)']),
        buildRow(['E74', '1.0(196.6)', '1.5(295.1)', '2.4(491.6)']),
      ],
      mixToCan: [ buildRow(['កូដពណ៌', 'ចំនួន 300ml '], isHeader: true),
        buildRow(['E37', '79.7']),
        buildRow(['E59', '8.4(88.1)',]),
        buildRow(['E15', '5(93.1)',]),
        buildRow(['E45', '3.7(96.8)',]),
        buildRow(['E74', '1.8(98.6)',]),
        buildRow(['E74', '0.3(98.9)',]),
      ],

    );
  }
}
