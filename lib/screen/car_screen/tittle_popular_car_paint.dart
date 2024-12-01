import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';


class TittlePopularColor extends StatefulWidget {
  const TittlePopularColor({Key? key}) : super(key: key);

  @override
  State<TittlePopularColor> createState() => _TittlePopularColorState();
}

class _TittlePopularColorState extends State<TittlePopularColor> {
  @override
  Widget build(BuildContext context) {
    return
      SliverToBoxAdapter(
        child:
        // Container(
        //   color: Colors.white,
        //  // width: 400,
        //   height: 40,
        MaterialButton(
          minWidth: 400,
          height: 40,
          elevation: 0.0,
          splashColor: Colors.pink,
          color: backgroundColor,
          onPressed: () {  },
          child: Image.asset('lib/images/popular_car.png',scale: 9.0,),
        ),
      );
  }
}
