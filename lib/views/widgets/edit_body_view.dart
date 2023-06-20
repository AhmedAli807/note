import 'package:flutter/material.dart';
import 'package:untitled11/views/widgets/custom_app_bar.dart';
import 'package:untitled11/views/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
          body:Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 24),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children:  [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 16),
                    child: CustomAppBar(title: 'Edit',icon: Icons.check,),
                  ),
                  const CustomTextField(hint: 'Title'),
                  SizedBox(
                    height: height*0.02,
                  ),
                  const CustomTextField(hint: 'Content',maxLine: 5,)
                ],
              ),
            ),
          )
    );
  }
}
