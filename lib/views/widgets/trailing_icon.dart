import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrailingIconButton extends StatelessWidget {
   TrailingIconButton({required this.icon,this.color,required this.onPressed,
    super.key,
  });
IconData ?icon;
double size=30;
Color ?color;
 void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon:  FaIcon(icon,
        color: color,
        size: size,),
    );
  }
}