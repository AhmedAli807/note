import 'package:flutter/material.dart';
import 'package:untitled11/views/widgets/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0,
      horizontal: 16),
      child: Column(
        children: const [
          CustomTextField()
        ],
      ),
    );
  }
}
