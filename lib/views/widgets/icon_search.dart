import 'package:flutter/material.dart';

class IconSearch extends StatelessWidget {
  const IconSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(5)
          ),
          child:   IconButton(
            onPressed: (){},
            icon: const Icon(
                Icons.search,
              size:25,
            ),
          ),
        );

  }
}
