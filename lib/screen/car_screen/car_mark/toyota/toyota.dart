import 'package:flutter/material.dart';


class Toyota extends StatefulWidget {
  const Toyota({Key? key}) : super(key: key);

  @override
  State<Toyota> createState() => _ToyotaState();
}

class _ToyotaState extends State<Toyota> {
  final style = const TextStyle(fontSize: 22, fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return
      const Scaffold(
          body:
          Column(
            children: [
              SliverAppBar(backgroundColor: Color(0xfffa8500),
                toolbarHeight: 100,
                title: Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Text('ថ្នាំឡានលេក១',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                  ),
                    textAlign: TextAlign.center,),
                ),
                centerTitle: true,),
            ],
          )

    ,);
  }
}
