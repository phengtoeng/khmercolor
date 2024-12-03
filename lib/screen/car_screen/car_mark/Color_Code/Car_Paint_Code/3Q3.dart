import 'package:flutter/material.dart';
import 'package:khmerautocolor/modelcode/model_code_with_basecode.dart';

const indicatorColor = Color(0x98212121);


class Code_3Q3 extends StatefulWidget {
  const Code_3Q3({Key? key}) : super(key: key);

  @override
  State<Code_3Q3> createState() => _Code_3Q3State();
}
class _Code_3Q3State extends State<Code_3Q3>
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
    return CodeModelWithBaseCode(
      controller: controller,
      mixBaseCode: [
        buildRow (['កូដពណ៌', 'ចំនួន 250ml ', 'ចំនួន 300ml']),
        buildRow(['E13', '96', '115.2']),
        buildRow(['E22', '50.2(146.2)', '60.3(175.5)']),
        buildRow(['E87', '32.7(178.9)', '39.3(214.8)']),
        buildRow(['E86', '29.8(208.7)', '35.8(250.6)']),
        buildRow(['E37', '10.8(246.5)', '12.9(295.9)']),
        buildRow(['E24', '27(235.7)', '32.4(283)']),
        buildRow(['E83', '2.9(249.4)', '3.5(299.4)']),
      ],
      mixTopCode1:[
      buildRow (['កូដពណ៌', 'ចំនួន 250ml ', 'ចំនួន 300ml']),
      buildRow(['E13', '96', '115.2']),
      buildRow(['E22', '50.2(146.2)', '60.3(175.5)']),
      buildRow(['E87', '32.7(178.9)', '39.3(214.8)']),
      buildRow(['E86', '29.8(208.7)', '35.8(250.6)']),
      buildRow(['E37', '10.8(246.5)', '12.9(295.9)']),
      buildRow(['E24', '27(235.7)', '32.4(283)']),
      buildRow(['E83', '2.9(249.4)', '3.5(299.4)']),
    ],
      mixToCan:[
        buildRow(['កូដពណ៌', 'ចំនួន 250ml ', 'ចំនួន 300ml']),
        buildRow(['E13', '96', '115.2']),
        buildRow(['E22', '50.2(146.2)', '60.3(175.5)']),
        buildRow(['E87', '32.7(178.9)', '39.3(214.8)']),
        buildRow(['E86', '29.8(208.7)', '35.8(250.6)']),
        buildRow(['E37', '10.8(246.5)', '12.9(295.9)']),
        buildRow(['E24', '27(235.7)', '32.4(283)']),
        buildRow(['E83', '2.9(249.4)', '3.5(299.4)']),
        buildRow(['E83', '2.9(249.4)', '3.5(299.4)']),],


    );
  }
}

