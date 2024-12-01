import 'package:flutter/material.dart';

class SliverColor extends StatefulWidget {
  const SliverColor({Key? key}) : super(key: key);

  @override
  State<SliverColor> createState() => _SliverColorState();
}

class _SliverColorState extends State<SliverColor> {
  @override
  Widget build(BuildContext context) {
    return
      SliverToBoxAdapter(
        child: Container(
          color: const Color(0x741D5E0C),
          width: 400,
          height: 70,
          child: GridView.count(crossAxisCount: 1,
            scrollDirection: Axis.horizontal,
            children: [
              Image.asset('lib/images/c01.png',fit: BoxFit.fill,),
              Image.asset('lib/images/c02.png',fit: BoxFit.fill,),
              Image.asset('lib/images/c03.png',fit: BoxFit.fill,),
              Image.asset('lib/images/c04.png',fit: BoxFit.fill,),
              Image.asset('lib/images/c05.png',fit: BoxFit.fill,),
              Image.asset('lib/images/c06.png',fit: BoxFit.fill,),
            ],),

        ),
      );
  }
}
