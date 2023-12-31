import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled11/controller/add_note/add_note_bloc.dart';

import '../../constants.dart';
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
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:kListColors.length ,scrollDirection:Axis.horizontal,itemBuilder: (context,index){
      return  Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 6.0),
        child: GestureDetector(
            onTap: (){
              currentIndex=index;
              BlocProvider.of<AddNoteBloc>(context).color=kListColors[index];
              setState(() {

              });
            },
            child: ColorItem(color:kListColors[index],isActive: currentIndex==index)),
      );
    });
  }
}
