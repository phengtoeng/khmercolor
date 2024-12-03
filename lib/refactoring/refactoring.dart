



import 'package:flutter/material.dart';
import 'package:khmerautocolor/color/color.dart';


/// Popular Car Paint ///

class PopularCar1 extends StatelessWidget {

  // final Color splashColor;
  // final Color color;
  final Image imagePath;
  final  popularcarDashboard;

  const PopularCar1({Key? key,
    required this.imagePath,required this.popularcarDashboard})

      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.0,
      splashColor: Colors.pink,
      color: backgroundColor,
      child: imagePath,
      // child: imagePath,
      onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) {
          return popularcarDashboard;
        }));
      },
    );

  }
}
/// Popular Car Paint End///
///
