import 'package:flutter/material.dart';
import 'package:untitled11/constants.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle:  const TextStyle(
        color:  kPrimaryColor
        ),
        enabledBorder: buildBuilder(),
        focusedBorder: buildBuilder(kPrimaryColor),
        border: buildBuilder()
      ),
    );
  }

  OutlineInputBorder buildBuilder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide:  BorderSide(
          color: color??Colors.white
        )
      );
  }
}
