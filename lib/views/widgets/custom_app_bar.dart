import 'package:flutter/material.dart';
import 'package:untitled11/views/widgets/icon_app_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key,required this.title,required this.icon, this.onPressed}) : super(key: key);
final String?title;
final IconData?icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:   [
         Text("$title",
        style: const TextStyle(
          fontSize: 22,
        ),),
         const Spacer(),
        IconAppBar(icon: icon,onPressed: onPressed,)
      ],
    );
  }
}

