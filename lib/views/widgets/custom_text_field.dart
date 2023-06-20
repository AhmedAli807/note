import 'package:flutter/material.dart';
import 'package:untitled11/constants.dart';
class CustomTextField extends StatelessWidget {
   const CustomTextField({required this.hint,this.maxLine=1,this.onSaved,Key? key}) : super(key: key);
 final String?hint;
  final int?maxLine;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty??true)
          {
            return 'Field is required';
          }else{
            return null;
        }
      },
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
