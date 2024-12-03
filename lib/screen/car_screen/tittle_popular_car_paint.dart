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


    return SliverToBoxAdapter(
      child: MaterialButton(
        minWidth: 400,
        height: 40,
        elevation: 0.0,
        splashColor: Colors.pink,
        color: backgroundColor,  // Adjusted to use dynamic color
        onPressed: () {
          // You can add your onPressed functionality here if needed.
        },
        child: Image.asset(
          'lib/images/popular_car.png',
          scale: 9.0,
        ),
      ),
    );
  }
}
