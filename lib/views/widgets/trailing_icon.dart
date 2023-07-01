import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrailingIconButton extends StatelessWidget {
   const TrailingIconButton({required this.icon,this.color,required this.onPressed,
    super.key,
  });
final IconData ?icon;
final double size=30;
final Color ?color;
final  void Function()? onPressed;
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