import 'package:flutter/material.dart';

class IconAppBar extends StatelessWidget {
  const IconAppBar({
    super.key,required this.icon, required this.onPressed
  });
  final Function()? onPressed;
final IconData?icon;
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(5)
          ),
          child:   IconButton(
            onPressed: onPressed,
            icon:  Icon(
                icon,
              size:25,
            ),
          ),
        );

  }
}
