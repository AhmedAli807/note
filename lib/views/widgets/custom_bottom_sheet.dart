import 'package:flutter/material.dart';
import 'package:untitled11/views/widgets/form_bottom_sheet.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0,
      horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: FormBottomSheet(height: height),
      ),
    );
  }
}


