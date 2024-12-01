import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container_Reusable extends StatelessWidget {

  final chooseYearColor_navigation;
  final color;

  const Container_Reusable({Key? key, this.chooseYearColor_navigation,  this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topStart,
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 60, 0, 0),
            child: Icon(
              Icons.arrow_back,
              size: 34,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 55,),
            child: Text('chooseYearColor_navigation',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
      color: color,);
  }
}