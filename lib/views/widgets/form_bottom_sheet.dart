import 'package:flutter/material.dart';
import 'package:untitled11/views/widgets/custom_button.dart';
import 'package:untitled11/views/widgets/custom_text_field.dart';

class FormBottomSheet extends StatefulWidget {
  const FormBottomSheet({
    super.key,
    required this.height,
  });

  final double height;

  @override
  State<FormBottomSheet> createState() => _FormBottomSheetState();
}
String?title,subtitle;
GlobalKey<FormState>formKey=GlobalKey();
AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
class _FormBottomSheetState extends State<FormBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children:  [
          CustomTextField(hint: 'Title',onSaved: (value){
            title=value;
          },),
          SizedBox(
            height: widget.height*0.02,
          ),
          CustomTextField(hint: 'Content',maxLine: 5,onSaved: (value){
            subtitle=value;
          },),
          SizedBox(
            height: widget.height*0.03,
          ),
          CustomButton(onTap: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }
            else{
              autoValidateMode=AutovalidateMode.always;
              setState(() {

              });
            }
          },),
          SizedBox(
            height: widget.height*0.02,
          )
        ],
      ),
    );
  }
}