import 'package:flutter/material.dart';

import 'color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({
    super.key,
  });

  @override
  State<ColorListView> createState() => _ColorListViewState();
}
class _ColorListViewState extends State<ColorListView> {
  int currentIndex=0;
  List<Color>colors=const[
     Color(0xffAC3931),
     Color(0xffE5D352),
     Color(0xffD9E76C),
    Color(0xff537D8D),
     Color(0xff482C3D),
  ];
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:colors.length ,scrollDirection:Axis.horizontal,itemBuilder: (context,index){
      return  Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 6.0),
        child: GestureDetector(
            onTap: (){
              currentIndex=index;
              setState(() {

              });
            },
            child: ColorItem(color:colors[index],isActive: currentIndex==index)),
      );
    });
  }
}
