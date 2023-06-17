import 'package:flutter/material.dart';

class IconSearch extends StatelessWidget {
  const IconSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){},
      icon: Container(
        height: MediaQuery.of(context).size.height*0.6,
        width: MediaQuery.of(context).size.width*0.6,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(5)
        ),
        child:  Icon(
            Icons.search,
          size:25,
        ),
      ),
    );
  }
}
