import 'package:flutter/material.dart';
import 'package:untitled11/views/widgets/custom_button.dart';
import 'package:untitled11/views/widgets/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0,
      horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children:  [
            CustomTextField(hint: 'Title'),
            SizedBox(
              height: height*0.02,
            ),
            CustomTextField(hint: 'Content',maxLine: 5,),
            SizedBox(
              height: height*0.03,
            ),
            const CustomButton(),
            SizedBox(
              height: height*0.02,
            )
          ],
        ),
      ),
    );
  }
}
