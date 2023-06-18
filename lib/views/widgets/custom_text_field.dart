import 'package:flutter/material.dart';
import 'package:untitled11/constants.dart';
class CustomTextField extends StatelessWidget {
   CustomTextField({required this.hint,this.maxLine=1,Key? key}) : super(key: key);
  String?hint;
  int?maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
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
