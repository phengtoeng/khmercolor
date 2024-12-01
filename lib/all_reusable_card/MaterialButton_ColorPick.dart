import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialButton_ColorPick extends StatelessWidget {
  final image;
  final NavigateCarColorPick;

  const MaterialButton_ColorPick({Key? key, @required this.image, required this.NavigateCarColorPick, }) : super(key: key);

  @override
  Widget build (BuildContext context, ) {

    return MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                NavigateCarColorPick),);
          //Navigator.of(context).pop;
        },
        child: Image.asset(image)
    );
  }

}
