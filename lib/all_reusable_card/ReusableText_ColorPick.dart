import 'package:flutter/cupertino.dart';
import 'package:khmerautocolor/color/color.dart';
import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {

  final String text;
  final String CodeText;

  const ReusableText({Key? key, required this.text, required this.CodeText,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text,style: (const TextStyle(fontSize: 23, color: textColor1)),
        ),
        const SizedBox(width: 20,),
        Text( CodeText,
          style: const TextStyle(
              fontSize: 23, color: textColor1),
        ),
      ],
    );
  }
}